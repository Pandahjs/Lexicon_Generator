class_name Generator

static func gen(lines: int = randi_range(1, 4), curves: int = randi_range(0, 4),
				strokes: int = randi_range(1, lines + curves), minCurveAngle: float = randf_range(-PI, 0),
				maxCurveAngle: float = randf_range(0, PI), minLength: float = randf_range(1 / 64., 1 / 4.),
				maxLength: float = randf_range(1 / 4., .5)) -> Node2D:
	assert(lines + curves > 0)
	assert(strokes > 0)
	assert(strokes <= lines + curves)
	#assert(minAngle >= -PI && minAngle <= 0)
	#assert(maxAngle <= PI && minAngle >= 0)
	assert(minCurveAngle >= -PI && minCurveAngle <= 0)
	assert(maxCurveAngle <= PI && minCurveAngle >= 0)
	assert(minLength >= 1 / 64. && maxLength <= .5)
	assert(minLength <= maxLength)
	var root: Node2D = Node2D.new()
	var segments: Array[Node2D] = []
	for x in lines:
		var length: float = randfn((maxLength + minLength) / 2., .2)
		while length < 0 || length > 1:
			length = randfn((maxLength + minLength) / 2., .2)
		segments.append(_new_line(length * (maxLength - minLength) + minLength))
	for x in curves:
		var length: float = randfn((maxLength + minLength) / 2., .2)
		while length < 0 || length > 1:
			length = randfn((maxLength + minLength) / 2., .2)
		var curveAngle = randfn((maxCurveAngle + minCurveAngle) / 2., .2)
		while curveAngle < 0 || curveAngle > 1:
			curveAngle = randfn((maxCurveAngle + minCurveAngle) / 2., .2)
		segments.append(_new_curve(length * (maxLength - minLength) + minLength))
	segments.shuffle()
	var newStrokes: Array[bool] = []
	for x in lines + curves - 1:
		newStrokes.append(x < strokes - 1)
	newStrokes.shuffle()
	newStrokes.insert(0, true)
	var position: Vector2
	var lastPoint: Vector2
	for newStroke in newStrokes:
		var segment: Node2D = segments.pop_back()
		var p1: Vector2
		var p2: Vector2
		var endPoint: Vector2
		p1 = (segment if segment is Line2D else segment.curve).points[0]
		p2 = (segment.curve.points[1] if segment is Line2D else segment.curve.points[2])
		position = Vector2(randf_range(-.5, .5), randf_range(-.5, .5)) if newStroke else lastPoint
		endPoint = p2 - p1 + position
		if abs(endPoint.x) > .5 || abs(endPoint.y) > .5:
			var temp: float = p1.x
			p1.x = p2.x
			p2.x = temp
			endPoint = p2 - p1 + position
			if abs(endPoint.x) > .5 || abs(endPoint.y) > .5:
				temp = p1.x
				p1.x = p2.x
				p2.x = temp
				temp = p1.y
				p1.y = p2.y
				p2.y = temp
				if abs(endPoint.x) > .5 || abs(endPoint.y) > .5:
					temp = p1.x
					p1.x = p2.x
					p2.x = temp
					assert(!(abs(endPoint.x) > .5 || abs(endPoint.y) > .5))
		segment.set_point_position(0, p1)
		segment.set_point_position(1 if segment is Line2D else 2, p2)
		lastPoint = endPoint
		root.add_child(segment)
		segment.position = position + (position - p1)
	return root

static func _new_line(length: float) -> Line2D:
	var p: Vector2 = Vector2(length / 2, 0)
	var num: float = _rand_dir()
	var result: Line2D = Line2D.new()
	result.add_point(p.rotated(num))
	result.add_point(p.rotated(num + PI))
	return result

static func _new_curve(length: float) -> Path2D:
	var p: Vector2 = Vector2(length / 2, 0)
	var num: float = _rand_dir()
	var curve: Curve2D = Curve2D.new()
	curve.add_point(p.rotated(num))
	curve.add_point(Vector2.ZERO)
	var num2: float = _rand_dir()
	while num2 == num:
		num2 = _rand_dir()
	curve.add_point(p.rotated(num2))
	var result: Path2D = Path2D.new()
	result.curve = curve
	return result

static func _rand_dir() -> float:
	var RN: int = randi_range(0, 11)
	var num: float = _rand_dir()
	if RN < 2:
		num = 0
	elif RN < 4:
		num = PI / 2
	elif RN < 5:
		num = PI / 4
	elif RN < 6:
		num = PI / -4
	else:
		num = randf_range(-PI, PI)
	if randi() & 1:
		num = -num
	return num
