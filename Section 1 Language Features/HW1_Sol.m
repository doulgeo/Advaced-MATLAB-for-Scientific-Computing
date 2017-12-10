sum1a=0;
sum2a=0;
sum1w=0;
sum2w=0;
sum1sp=0;
sum2sp=0;
sum1s=0;
sum2s=0;
 for i=1:length(courses)    %Applying the GPA Formula
     course=courses(i);
     if course.quarter=='Autumn'
         sum1a=sum1a+course.gpa_units;
         sum2a= sum2a+course.gpa_credits * course.gpa_units;
     elseif course.quarter=='Winter'
         sum1w=sum1w+course.gpa_units;
         sum2w=sum2w+course.gpa_credits * course.gpa_units;
     elseif course.quarter=='Spring'
         sum1sp=sum1sp+course.gpa_units;
         sum2sp=sum2sp+course.gpa_credits * course.gpa_units;
     else
         sum1s=sum1s+course.gpa_units;
         sum2s=sum2s+course.gpa_credits * course.gpa_units;
     end
     gpa_winter=sum2w/sum1w;
     gpa_autumn=sum2a/sum1a;
     gpa_spring=sum2sp/sum1sp;
     gpa_sprin=sum2s/sum1s;
 end