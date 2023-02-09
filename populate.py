import random

years = ['Freshman', 'Sophomore', 'Junior', 'Senior']
majors = ['Business Administration: Accounting', 'Business Administration: Accounting with Specialization in Information Systems', 'Business Administration: Entrepreneurship', 'Business Administration: Finance', 'Business Administration: Financial Management', 'Business Administration: Financial Management with Specialization in Information Systems', 'Business Administration: Management', 'Business Administration: Management with Specialization in Information Systems', 'Business Administration: Marketing', 'Business Administration: Marketing with Specialization in Information Systems', 'Human Resources Management', 'Information Systems', 'International Business', 'Risk Management and Insurance', 'Sports Business', 'Architectural Design', 'Architectural Studies', '3D Graphics and Animation', 'Art History Emphasis', 'Art Practices Emphasis, Painting and Drawing', 'Art Practices Emphasis, Transmedia Sculpture', 'Digital Design Emphasis, Fine Arts', 'Film and Television Emphasis, Theater, Film and Television', 'Illustration Emphasis, Fine Arts', 'Music Business Audition Track Emphasis, Music', 'Music Business Non-Audition Track Emphasis, Music', 'Performance Emphasis, Music', 'Photography Emphasis, Fine Arts', 'Recording Arts Audition Track Emphasis, Music', 'Recording Arts Non-Audition Track Emphasis, Music', 'Singer/Songwriter Emphasis, Music', 'Songwriter Entrepreneur - Bachelor of Science', 'Bioengineering', 'Civil Engineering', 'Computer Science - BA', 'Computer Science - BS', 'Construction Engineering Management', 'Construction Management', 'Cyber Security', 'Electrical Engineering', 'Mechanical Engineering', 'Anthropology', 'Biochemistry', 'Biology', 'Chemistry', 'Communication', 'Economics', 'Economics and Mathematics Dual', 'English Writing, Rhetoric, and Technology', 'English - Creative Writing', 'English - Film Studies', 'English - Literature', 'English - Secondary Education', 'Ethnic Studies', 'Geography', 'Geography - Environment, Society, and Sustainability', 'Geography - Environmental Science', 'Geography - Urban Studies and Planning', 'History', 'History - Secondary Education', 'Individually Structured Major - Integrated Health Sciences', 'Individually Structured Major - Integrated Studies', 'Individually Structured Major - Interdisciplinary Studies', 'International Studies', 'Mathematics', 'Mathematics - Applied Option', 'Mathematics - Data Science', 'Mathematics - Probability and Statistics', 'Philosophy', 'Physics - Pure and Applied', 'Political Science', 'Political Science - Public Policy Option', 'Political Science - Secondary Education', 'Psychology - Bachelor of Arts', 'Psychology - Gardner Research Scholar - Bachelor of Arts', 'Psychology - Bachelor of Science', 'Psychology - Gardner Research Scholar - Bachelor of Science', 'Public Health - Bachelor of Arts', 'Public Health - Bachelor of Science', 'Sociology', 'Sociology - Gender and Society', 'Spanish Language, Literature and Culture', 'Spanish Language, Literature and Culture for the Professions', 'Spanish - Secondary Education', 'Early Childhood Education (Initial Licensure)', 'Early Childhood Education (Non-Licensure)', 'Elementary Education', 'Secondary English Language Arts', 'Secondary Math Education', 'Middle School Math Education', 'Secondary Science Education', 'Secondary Social Studies Education', 'Spanish - Secondary Education with CLAS', 'Special Education', 'Human Development and Family Relations', 'Criminal Justice', 'Criminal Justice: Law Enforcement', 'Criminal Justice: Victims and Victim Services', 'Public Administration', 'Public Administration: Nonprofit Management']

vowels = {'a', 'e', 'i', 'o', 'u'}
consonants = set(map(chr, range(ord('a'), ord('z')+1)))-vowels
vowels.add('y')

vowels = list(vowels)
consonants = list(consonants)

print('CREATE TABLE students (id INT unsigned NOT NULL AUTO_INCREMENT, name VARCHAR(100) NOT NULL, year VARCHAR(100) NOT NULL, major VARCHAR(100) NOT NULL, PRIMARY KEY (id));')

for i in range(100):
	fname = ""
	c = random.getrandbits(1)
	for i in range(random.randint(2, 7)):
		fname += random.choice([vowels, consonants][c])
		c = 1-c
	fname = fname[0].upper()+fname[1::]
	lname = ""
	c = random.getrandbits(1)
	for i in range(random.randint(4, 9)):
		lname += random.choice([vowels, consonants][c])
		c = 1-c
	lname = lname[0].upper()+lname[1::]
	print('INSERT INTO students(name, year, major) VALUES ("'+fname+' '+lname+'", "'+random.choice(years)+'", "'+random.choice(majors)+'");')

print('CREATE TABLE classes(id INT unsigned NOT NULL AUTO_INCREMENT, name VARCHAR(100) NOT NULL, PRIMARY KEY (id));')

for i in range(10):
	n = ''
	for j in range(4):
		n += random.choice(list(map(chr, range(ord('A'), ord('Z')+1))))
	for j in range(4):
		n += random.choice(list(map(chr, range(ord('0'), ord('9')+1))))
	print('INSERT INTO classes(name) VALUES ("'+n+'");')

print('CREATE TABLE sc_junction(student_id INT unsigned NOT NULL, class_id INT unsigned NOT NULL, PRIMARY KEY (student_id,class_id));')

combos = []

for i in range(100):
	for j in range(10):
		combos.append((i, j))

for c in random.sample(combos, int(len(combos)*0.5)):
	print('INSERT INTO sc_junction(student_id, class_id) VALUES ('+str(c[0]+1)+', '+str(c[1]+1)+');')
