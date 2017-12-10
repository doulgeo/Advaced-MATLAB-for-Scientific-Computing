

s = 0;
credit_s = 0;
for i =1:length(courses)
    course=courses(i);
    credit_s = credit_s + course.gpa_units;
    s = s + course.gpa_credits * course.gpa_units;
 end
o = s / credit_s % gpa 