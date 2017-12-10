sum=0;
sum2=0;
for i=1:length(courses)
    course=courses(i);
    if and(course.academic_year==3,course.quarter=='Winter')
        sum=sum+course.gpa_units
        sum2=sum2+course.gpa_units*course.gpa_credits
    end
    
end
gpa=sum2/sum
3.7-gpa
    