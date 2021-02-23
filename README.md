# Group 1 - Final Project

## Topic Selection, Source & Reasoning

The topic we chose to pursue was wine. The data was scraped from the Vivino wine rating website and then shared on Kaggle. The dataset contains nearly 5,000 rows and 15 columns of wineries, wine names, years, regions, regional varieties, wine ratings, wine rating counts, wine prices, wine rating to price ratios, vintage ratings, vintage rating counts, vintage prices, vintage rating to price ratios, and age. As wine consumers, we understand that vintage can greatly affect the quality, price, and taste of the finished wine. As data scientists and machine learning practioners, we want to predict whether any of the features has an affect on our vintage rating. 

## Project Outline

### Communication Protocols

We assigned roles and responsibilities early on. We understood our group would be the smallest and therefore decided to maintain our roles throughout the project. Kyle holds the Square role where he is responsible for building the machine learning model and Carolina holds the Triangle & Circle role where she is responsible for establishing and upscaling the database and creating the group presentation and dashboard.  

Our primary line of communication is text messaging and Slack channel. We also utilize our break-out rooms on Monday and Wednesday classes to discuss next steps and exchange ideas.

### Tools & Resources

- Git & GitHub
- Jupyter Notebook
- Visual Studio Code
- Python and Mlenv environments
- Microsoft Azure SQL database
- Microsoft SQL Server Management Studio 18
- Google & Google Slides
- Tableau Public 2020.4
- Northwestern University Bootcamp course content


### Description Of Data Exploration & Analysis

**Exploratory Analysis**

Used Tableau Public to create charts that would help us futher understand the dataset; whether there were correlations between the data features; if the correlations were strong or weak; and assist with feature selection.

While we were not able to create charts that would help us answer our question, we did find that there were more vintage ratings in 2016 than any other year, vintage ratings betwween 4.0 and 4.1 were more prevalent, and winery Domaine Leflaive had the highest count of vintage ratings.

<div class='tableauPlaceholder' id='viz1613967823797' style='position: relative'><noscript><a href='#'><img alt=' ' src='https:&#47;&#47;public.tableau.com&#47;static&#47;images&#47;Gr&#47;Group1_Final&#47;Story1&#47;1_rss.png' style='border: none' /></a></noscript><object class='tableauViz'  style='display:none;'><param name='host_url' value='https%3A%2F%2Fpublic.tableau.com%2F' /> <param name='embed_code_version' value='3' /> <param name='site_root' value='' /><param name='name' value='Group1_Final&#47;Story1' /><param name='tabs' value='no' /><param name='toolbar' value='yes' /><param name='static_image' value='https:&#47;&#47;public.tableau.com&#47;static&#47;images&#47;Gr&#47;Group1_Final&#47;Story1&#47;1.png' /> <param name='animate_transition' value='yes' /><param name='display_static_image' value='yes' /><param name='display_spinner' value='yes' /><param name='display_overlay' value='yes' /><param name='display_count' value='yes' /><param name='language' value='en' /><param name='filter' value='publish=yes' /></object></div>               

[Interactive Dashboard](https://public.tableau.com/views/Group1_Final/Story1?:language=en&:display_count=y&publish=yes&:origin=viz_share_link)

**Preprocessing**
- Used pyodbc to create a connection to our SQL server and Pandas to initiated the DataFrame
- Assigned features to X and VintageRating as our Y target
- Dropped duplicate features and drop N.V. rows in the Year column
- Utilized column transformer to implement StandardScaler on floats and OrdinalEncoder on objects

**Feature Selection**
- Using YellowBrick Rank2D, we can see the features selected all include positive correlations
- Reduced our X features from 11 to 8 

![Pearson_chart](https://github.com/carolinaroca007/Group1_Final/blob/Carolina/pearson_ranking.png)

**Testing & Training**
- Using Train, Test, Split: we split the data into a train and test, 75/25, fit the model with all the data, and later tested the model using the test data
- The model predicted 86% of the target value accurately

**Model Selection**
- Initially, we used a neural network, which resulted in negative R2 values for testing and training
- Moving to a more simple approach of linear regression, we were able to get a model score of .88, signaling that 88% of the data fit the regression model. 

![Residual_chart](https://github.com/carolinaroca007/Group1_Final/blob/Carolina/Residual_model_graph.png)

### Questions We Hope To Answer

- Can we accurately predict the vintage ratings of wines using a linear regression model?
- Which features offer the most correlation and thus lead to a better model score?

[Speaker Slides](https://docs.google.com/presentation/d/e/2PACX-1vQPmKY26O4CQ9BzVrygJ3-PpNhL09dB32gKA-x5rtPS9l8oPRCexouum2ilnekg_CXoJAaQpU48t_go/pub?start=false&loop=true&delayms=3000)




