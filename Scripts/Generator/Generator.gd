class_name Generator

const minMinLength: float = 1 << 4
const maxMaxLength: float = 1 << 8

static func gen(lines: int = randi_range(1, 4), curves: int = randi_range(0, 4),
				strokes: int = randi_range(1, ceil((lines + curves) / 2.)),
				minLength: float = randf_range(minMinLength, (minMinLength + maxMaxLength) / 2),
				maxLength: float = randf_range((minMinLength + maxMaxLength) / 2, maxMaxLength)) -> Line2D:
	assert(lines + curves > 0)
	assert(strokes > 0)
	assert(strokes <= lines + curves)
#	assert(minAngle >= -PI && minAngle <= 0)
#	assert(maxAngle <= PI && minAngle >= 0)
#	assert(minCurveAngle >= -PI && minCurveAngle <= 0)
#	assert(maxCurveAngle <= PI && maxCurveAngle >= 0)
	assert(minLength >= minMinLength && maxLength <= maxMaxLength)
	assert(minLength <= maxLength)
	var newStrokes: Array[bool] = []
	for x in lines + curves - 1:
		newStrokes.append(x < strokes - 1)
	newStrokes.shuffle()
	newStrokes.insert(0, true)
	var fns: Array[Callable] = []
	for x in lines + curves:
		fns.append(Generator._append_line if x < lines else Generator._append_curve)
	fns.shuffle()
	var root: Node2D = Node2D.new()
	var line: Line2D = null
	for newStroke in newStrokes:
		if newStroke:
			if line:
				root.add_child(line)
			line = Line2D.new()
			line.add_point(Vector2(randf_range(minMinLength, maxMaxLength), randf_range(minMinLength, maxMaxLength)))
		fns.pop_back().call(line, randf_range(minLength, maxLength))
	root.add_child(line)
	return root
	
#	var root: Node2D = Node2D.new()
#	var segments: Array[Line2D] = []
#	for x in lines + curves:
#		var length: float = randfn((maxLength + minLength) / 2., .2)
#		while length < 0 || length > 1:
#			length = randfn((maxLength + minLength) / 2., .2)
#		segments.append((Generator._new_line if x < lines else
#						 Generator._new_curve).call(length * (maxLength - minLength) + minLength))
#	segments.shuffle()
#	var newStrokes: Array[bool] = []
#	for x in lines + curves - 1:
#		newStrokes.append(x < strokes - 1)
#	newStrokes.shuffle()
#	newStrokes.insert(0, true)
#	var position: Vector2
#	var lastPoint: Vector2
#	for newStroke in newStrokes:
#		var segment: Line2D = segments.pop_back()
#		var p1: Vector2
#		var p2: Vector2
#		var endPoint: Vector2
#		p1 = segment.points[0]
#		p2 = segment.points[-1]
#		position = Vector2(randf_range(minMinLength, maxMaxLength), randf_range(minMinLength, maxMaxLength))
#				   if newStroke else lastPoint
#		endPoint = p2 - p1 + position
#		if abs(endPoint.x) > 4 || abs(endPoint.y) > 4:
#			var temp: float = p1.x
#			p1.x = p2.x
#			p2.x = temp
#			endPoint = p2 - p1 + position
#			if abs(endPoint.x) > 4 || abs(endPoint.y) > 4:
#				temp = p1.x
#				p1.x = p2.x
#				p2.x = temp
#				temp = p1.y
#				p1.y = p2.y
#				p2.y = temp
#				if abs(endPoint.x) > 4 || abs(endPoint.y) > 4:
#					temp = p1.x
#					p1.x = p2.x
#					p2.x = temp
#					assert(!(abs(endPoint.x) > 4 || abs(endPoint.y) > maxMaxLength))
#		segment.points[0] = p1
#		segment.points[-1] = p2
#		lastPoint = endPoint
#		root.add_child(segment)
#		segment.position = position + (position - p1)
#	return root
#
#static func _new_line(length: float) -> Line2D:
#	var p: Vector2 = Vector2(length / 2, 0)
#	var num: float = _rand_dir()
#	var result: Line2D = Line2D.new()
#	result.add_point(p.rotated(num))
#	result.add_point(p.rotated(num + PI))
#	result.begin_cap_mode = Line2D.LINE_CAP_ROUND
#	result.end_cap_mode = Line2D.LINE_CAP_ROUND
#	return result
#
#static func _new_curve(length: float) -> Line2D:
#	var p: Vector2 = Vector2(length / 2, 0)
#	var num: float = _rand_dir()
#	var curve: Curve2D = Curve2D.new()
#	curve.add_point(p.rotated(num))
#	curve.add_point(Vector2.ZERO)
#	var num2: float = _rand_dir()
#	while num2 == num:
#		num2 = _rand_dir()
#	curve.add_point(p.rotated(num2))
#	var result: Line2D = Line2D.new()
#	result.points = curve.tessellate()
#	return result

static func _append_line(line: Line2D, length: float) -> void:
	var p: Vector2 = line.points[-1] + Vector2(length, 0).rotated(_rand_dir())
	while p.x < -maxMaxLength || p.x > maxMaxLength || p.y < -maxMaxLength || p.y > maxMaxLength:
		p = line.points[-1] + Vector2(length, 0).rotated(_rand_dir())
	line.add_point(p)

static func _append_curve(line: Line2D, length: float) -> void:
	var curve: Curve2D = Curve2D.new()
	curve.add_point(line.points[-1])
	var p: Vector2 = curve.get_point_position(-1) + Vector2(length / 2, 0).rotated(_rand_dir())
	while p.x < -maxMaxLength || p.x > maxMaxLength || p.y < -maxMaxLength || p.y > maxMaxLength:
		p = curve.get_point_position(-1) + Vector2(length / 2, 0).rotated(_rand_dir())
	curve.add_point(p)
	p = curve.get_point_position(-1) + Vector2(length / 2, 0).rotated(_rand_dir())
	while p.x < -maxMaxLength || p.x > maxMaxLength || p.y < -maxMaxLength || p.y > maxMaxLength\
		  || p == curve.get_point_position(-1):
		p = curve.get_point_position(-1) + Vector2(length / 2, 0).rotated(_rand_dir())
	curve.add_point(p)
	var flag: bool = false
	for point in curve.tessellate(8, 1 / 16.):
		if flag:
			line.add_point(point)
		else:
			flag = true

static func _rand_dir() -> float:
	var RN: int = randi_range(0, 11)
	var num: float
	if RN < 2:
		num = 0
	elif RN < 4:
		num = PI / 2
	elif RN < 5:
		num = PI / 4
	elif RN < 6:
		num = PI / minMinLength
	else:
		num = randf_range(-PI, PI)
	if randi() & 1:
		num = -num
	return num
