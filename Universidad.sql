-- SELECT apellido1, apellido2, nombre FROM persona WHERE tipo = 'alumno' ORDER BY apellido1, apellido2, nombre;
-- SELECT nombre, apellido1, apellido2 FROM persona WHERE tipo = 'alumno' AND telefono IS NULL;
-- SELECT nombre, apellido1, apellido2 FROM persona WHERE tipo = 'alumno' AND YEAR(fecha_nacimiento) = 1999;
-- SELECT nombre, apellido1, apellido2 FROM persona WHERE tipo = 'profesor' AND telefono IS NULL AND nif LIKE '%K';
-- SELECT nombre FROM asignatura WHERE id_grado = 7 AND curso = 3 AND cuatrimestre = 1;
-- SELECT p.apellido1, p.apellido2, p.nombre, d.nombre FROM persona p JOIN profesor pr ON p.id = pr.id_profesor JOIN departamento d ON pr.id_departamento = d.id WHERE p.tipo = 'profesor' ORDER BY p.apellido1, p.nombre;
-- SELECT a.nombre, ce.anyo_inicio, ce.anyo_fin FROM alumno_se_matricula_asignatura asma JOIN persona p ON asma.id_alumno = p.id JOIN asignatura a ON asma.id_asignatura = a.id JOIN curso_escolar ce ON asma.id_curso_escolar = ce.id WHERE p.nif = '26902806M';
-- SELECT DISTINCT d.nombre FROM departamento d JOIN profesor pr ON d.id = pr.id_departamento JOIN asignatura a ON pr.id_profesor = a.id_profesor JOIN grado g ON a.id_grado = g.id WHERE g.nombre = 'Grado en Ingeniería Informática (Plan 2015)';
-- SELECT DISTINCT p.nombre, p.apellido1, p.apellido2 FROM alumno_se_matricula_asignatura asma JOIN persona p ON asma.id_alumno = p.id JOIN curso_escolar ce ON asma.id_curso_escolar = ce.id WHERE ce.anyo_inicio = 2018 AND ce.anyo_fin = 2019;
-- SELECT d.nombre AS 'Nome do Departamento', p.apellido1, p.apellido2, p.nombre FROM profesor pr LEFT JOIN departamento d ON pr.id_departamento = d.id JOIN persona p ON pr.id_profesor = p.id ORDER BY d.nombre, p.apellido1, p.nombre;
-- SELECT d.nombre AS 'Nome do Departamento', p.apellido1, p.apellido2, p.nombre FROM departamento d RIGHT JOIN profesor pr ON d.id = pr.id_departamento JOIN persona p ON pr.id_profesor = p.id ORDER BY d.nombre, p.apellido1, p.nombre;
-- SELECT p.nombre, p.apellido1, p.apellido2 FROM profesor pr LEFT JOIN departamento d ON pr.id_departamento = d.id JOIN persona p ON pr.id_profesor = p.id WHERE d.id IS NULL;
-- SELECT p.nombre, p.apellido1, p.apellido2 FROM departamento d RIGHT JOIN profesor pr ON d.id = pr.id_departamento JOIN persona p ON pr.id_profesor = p.id WHERE d.id IS NULL;
-- SELECT d.nombre FROM departamento d LEFT JOIN profesor pr ON d.id = pr.id_departamento WHERE pr.id_profesor IS NULL;
-- SELECT d.nombre FROM profesor pr RIGHT JOIN departamento d ON pr.id_departamento = d.id WHERE pr.id_profesor IS NULL;
-- SELECT p.nombre, p.apellido1, p.apellido2 FROM profesor pr LEFT JOIN asignatura a ON pr.id_profesor = a.id_profesor JOIN persona p ON pr.id_profesor = p.id WHERE a.id IS NULL;
-- SELECT p.nombre, p.apellido1, p.apellido2 FROM asignatura a RIGHT JOIN profesor pr ON a.id_profesor = pr.id_profesor JOIN persona p ON pr.id_profesor = p.id WHERE a.id IS NULL;
-- SELECT a.nombre FROM asignatura a LEFT JOIN profesor pr ON a.id_profesor = pr.id_profesor WHERE pr.id_profesor IS NULL;
-- SELECT a.nombre FROM profesor pr RIGHT JOIN asignatura a ON pr.id_profesor = a.id_profesor WHERE pr.id_profesor IS NULL;
-- SELECT d.nombre FROM departamento d LEFT JOIN profesor pr ON d.id = pr.id_departamento LEFT JOIN asignatura a ON pr.id_profesor = a.id_profesor WHERE a.id IS NULL;
-- SELECT d.nombre FROM asignatura a RIGHT JOIN profesor pr ON a.id_profesor = pr.id_profesor RIGHT JOIN departamento d ON pr.id_departamento = d.id WHERE a.id IS NULL;
-- SELECT COUNT(*) FROM persona WHERE tipo = 'alumno';
-- SELECT COUNT(*) FROM persona WHERE tipo = 'alumno' AND YEAR(fecha_nacimiento) = 1999;
-- SELECT d.nombre, COUNT(pr.id_profesor) AS 'Número de Professores' FROM departamento d JOIN profesor pr ON d.id = pr.id_departamento GROUP BY d.nombre ORDER BY COUNT(pr.id_profesor) DESC;
-- SELECT d.nombre, COUNT(pr.id_profesor) AS 'Número de Professores' FROM departamento d LEFT JOIN profesor pr ON d.id = pr.id_departamento GROUP BY d.nombre ORDER BY d.nombre;
-- SELECT g.nombre, COUNT(a.id) AS 'Número de Disciplinas' FROM grado g LEFT JOIN asignatura a ON g.id = a.id_grado GROUP BY g.nombre ORDER BY COUNT(a.id) DESC;
-- SELECT g.nombre, COUNT(a.id) AS 'Número de Disciplinas' FROM grado g JOIN asignatura a ON g.id = a.id_grado GROUP BY g.nombre HAVING COUNT(a.id) > 40;
-- SELECT g.nombre AS 'Nome do Curso', a.tipo AS 'Tipo de Disciplina', SUM(a.creditos) AS 'Soma dos Créditos' FROM grado g JOIN asignatura a ON g.id = a.id_grado GROUP BY g.nombre, a.tipo;
-- SELECT ce.anyo_inicio AS 'Ano de Início', COUNT(asma.id_alumno) AS 'Número de Alunos Matriculados' FROM curso_escolar ce JOIN alumno_se_matricula_asignatura asma ON ce.id = asma.id_curso_escolar GROUP BY ce.anyo_inicio;
-- SELECT p.id, p.nombre, p.apellido1, p.apellido2, COUNT(a.id) AS 'Número de Asignaturas' FROM persona p LEFT JOIN profesor pr ON p.id = pr.id_profesor LEFT JOIN asignatura a ON pr.id_profesor = a.id_profesor WHERE p.tipo = 'profesor' GROUP BY p.id, p.nombre, p.apellido1, p.apellido2 ORDER BY COUNT(a.id) DESC;
-- SELECT * FROM persona WHERE tipo = 'alumno' AND fecha_nacimiento = (SELECT MAX(fecha_nacimiento) FROM persona WHERE tipo = 'alumno');
-- SELECT p.id, p.nombre, p.apellido1, p.apellido2, d.nombre AS 'Departamento' FROM profesor pr JOIN persona p ON pr.id_profesor = p.id JOIN departamento d ON pr.id_departamento = d.id LEFT JOIN asignatura a ON pr.id_profesor = a.id_profesor WHERE a.id IS NULL GROUP BY p.id, p.nombre, p.apellido1, p.apellido2, d.nombre;
