

puts "start seeding"

 job_listings = JobListing.create([
    {job_title: "Senior Program Officer", category_id: 1, description: "Monitors and analyzes programme/project development and implementation; reviews relevant documents and reports; identifies problems and issues to be addressed and proposes corrective actions; liaises with relevant parties; identifies and tracks follow-up actions", qualification: "at least a bachelor's degree in a field such as human resources, accounting, business management, business administration or communications", deadline:"3rd January 2023", employee_id: 1, employer_id: 1},
    {job_title: "Full stack developer",  category_id: 2, description: "Designing user interactions on websites, developing servers, and databases for website functionality, and coding for mobile platforms.", qualification: "Degree in computer science.Strong organizational and project management skills.Proficiency with fundamental front-end languages such as HTML, CSS, and JavaScript.Familiarity with JavaScript frameworks such as Angular JS, React, and Amber.Proficiency with server-side languages such as Python, Ruby, Java, PHP, and .Net.Familiarity with database technology such as MySQL, Oracle, and MongoDB.Excellent verbal communication skills. Good problem-solving skills. Attention to detail.", deadline:"7th February 2023", employee_id: 2, employer_id: 2},
    {job_title: "Data Analyst",  category_id: 3, description: "Review data to identify key insights into a business's customers and ways the data can be used to solve problems", qualification: "a bachelor's degree in math, statistics, economics, computer science, or another quantitative field.", deadline:"26th January 2023", employee_id: 1, employer_id: 3},
    {job_title: "Full stack developer",  category_id: 1, description: "Designing user interactions on websites, developing servers, and databases for website functionality, and coding for mobile platforms.", qualification: "Degree in computer science.Strong organizational and project management skills.Proficiency with fundamental front-end languages such as HTML, CSS, and JavaScript.Familiarity with JavaScript frameworks such as Angular JS, React, and Amber.Proficiency with server-side languages such as Python, Ruby, Java, PHP, and .Net.Familiarity with database technology such as MySQL, Oracle, and MongoDB.Excellent verbal communication skills. Good problem-solving skills. Attention to detail.", deadline:"7th February 2023", employee_id: 2, employer_id: 1}
 ])

 categories = Category.create([
   {name: "Human Resource"},
   {name: "Programming"},
   {name: "Data Science"},
   {name: "Others"}
 ])

 employers = Employer.create([
   {username:"Christabel Masakhwe", email: "christabel@gmail.com", password: "christabel20"},
   {username:"Jerry Johns", email: "jerryjohn@gmail.com", password: "jerryjohn22"},
   {username:"Salim Mwetsefu", email: "salim@gmail.com", password: "salim2022"}
 ])

 employees = Employee.create([
   {username:"Mercy Aduor", email: "mercyaduor@gmail.com", password: "mercy2030"},
   {username:"Peter Maina", email: "petermaina@gmail.com", password: "peter2040"}
 ])
puts "done seeding"