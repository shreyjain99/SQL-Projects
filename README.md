<h2 align= "Left"><em>SQL-Projects Repository Summary</em></h2>

<div align="center">
  <img height="200" src="https://github.com/shreyjain99/SQL-Projects/blob/main/src%20files/cover%20photo.png"/>
</div>

<hr width="100%" size="2">

<h3 align= "left"> <b> GitHub Repository Overview </b> </h3>

<br>

<body>
    <ul>
        <li><strong>Chicago Crime Analysis using SQL:</strong> A comprehensive project analyzing crime data in Chicago using SQL.</li>
        <li><strong>PetclinicDB Transformation Project:</strong> A project focused on transforming the PetclinicDB database.</li>
        <li><strong>LeetCode SQL50 Solutions:</strong> Solutions to the top 50 SQL problems on LeetCode.</li>
        <li><strong>SQL Certifications:</strong> Documentation and details of SQL certifications obtained.</li>
        <li><strong>SQL Questions and Queries:</strong> A collection of SQL questions and queries developed using MySQL Workbench.</li>
        <li><strong>W3Schools SQL Quiz Solutions:</strong> Solved quizzes from W3Schools SQL tutorials.</li>
    </ul>
</body>

<br>

<hr width="100%" size="2">

<h3 align= "left"> <b>Chicago Crime Analysis using SQL</b> </h3>

<body>
    <h4>Objective</h4>
    <p>
        Analyze crime data in Chicago using the "Crimes - 2001 to present - Dashboard" dataset. The analysis focuses on spatial and temporal characteristics, crime types, and arrest rates.
    </p>
    <h4>Dataset Details</h4>
    <ul>
        <li>Size: 1,048,576 rows and 21 columns</li>
        <li>Attributes: ID, case number, date, block, primary type, description, location description, arrest, domestic, beat, district, ward, community area, FBI code, coordinates, year, updated on, latitude, longitude, location.</li>
    </ul>
    <h4>Design and Implementation</h4>
    <ul>
        <li>Conceptual Design: Understanding the dataset and its attributes.</li>
        <li>Logical Design: Defines the structure of the database.</li>
        <li>Physical Design: Implementation using MySQL.</li>
    </ul>
    <h4>Key Insights</h4>
    <ol>
        <li>Top Crime Types: Theft and battery are the most common crimes.</li>
        <li>Monthly Crime Trends: A declining trend from 2015 to 2022.</li>
        <li>Daily Crime Distribution: Thursday has the highest incidents.</li>
        <li>Crime Locations: High crime rates on streets.</li>
        <li>Community and Ward Analysis: Identifies top areas with high crime rates.</li>
    </ol>
    <h4>Conclusion</h4>
    <p>
        The analysis provides valuable insights into crime patterns, aiding stakeholders in enhancing public safety in Chicago.
    </p>
</body>



<br>

<hr width="100%" size="2">

<h3 align= "left"> <b>PetClinicDB Transformation Project</b> </h3>

<body>
    <p>The project involves transforming a pet clinic's data management from Excel to a MySQL database. The goal is to develop a robust data model using MySQL Workbench to efficiently manage customer, pet, visit, payment, procedure, doctor, and prescription information.</p>

  <h4>Key Components</h4>
    <ul>
        <li><strong>Customer Management:</strong> Each customer is assigned a unique ID. Information such as email, name, date of birth, and city is stored in the <code>CUSTOMER</code> table.</li>
        <li><strong>Pet Information:</strong> Each pet has a unique ID and attributes like name, date of birth, weight, and species. Pets are linked to their owners through the <code>CUSTOMER</code> table.</li>
        <li><strong>Visits and Payments:</strong> Each pet visit is recorded with a unique visit ID, date, cost, and attending doctor. Payments related to visits are stored in the <code>PAYMENTS</code> table, which includes payment type, date, and amount.</li>
        <li><strong>Procedures and Doctors:</strong> Each procedure has a unique ID and includes details like cost, type, and description. Doctors have unique IDs and can prescribe multiple medications.</li>
        <li><strong>Prescriptions:</strong> Each prescription includes drug name, dosage, and cost, linked to the prescribing doctor.</li>
    </ul>

  <h4>Business Rules</h4>
    <ul>
        <li>No fields allow NULL values.</li>
        <li>Payment types are restricted to 'cash', 'credit', or 'check'.</li>
        <li>All cost fields must contain positive decimal values.</li>
    </ul>

   <h4>Data Model</h4>
    <p>The data model includes:</p>
    <ol>
        <li><strong>Conceptual Design:</strong> Using Chen’s model to outline relationships.</li>
        <li><strong>Logical Design:</strong> An ERD diagram to visualize table relationships.</li>
        <li><strong>Physical Design:</strong> SQL scripts to create and manage the database schema.</li>
    </ol>

   <h4>ER Diagram</h4>
    <img height="300" src="https://github.com/shreyjain99/SQL-Projects/blob/main/PetClinicDB%20Transformation%20Project/ER%20DIAGRAM%20SS.png" alt="ER Diagram">

   <h4>Chen Model</h4>
    <img height="300" src="https://github.com/shreyjain99/SQL-Projects/blob/main/PetClinicDB%20Transformation%20Project/CHEN%20MODEL%20SS.png" alt="Chen Model">
</body>
