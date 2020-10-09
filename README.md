# Linear-Regression-Basic-Task1
**Basic Understanding of Linear Regression 	:man_teacher:

## What is Linear Regression <h2> ![alt text](https://github.com/jaikushwaha7/Linear-Regression-Basic-Task1/blob/main/Image%201.png)
Simplest of techniques that can be used for a supervised learning algorithm in regression problems is Linear regression. It gives the simplest of understanding of the output.
\nRegression is a technique for finding the relationship between a response variable and one or more explanatory variables.
1. Simple Linear Regression: Predict Y using only one independent variable — Estimated y = b0 + b1 * x1

2. Multiple Linear Regression: Predict Y by considering more than one independent variable — Estimated y = b0 + b1 *x1 + b2 *x2

**In the Example we have to find whether hours :timer_clock: of study impact the scores :abacus: on an individual given the data.
Formula for Linear Regression
lm(formula = Scores ~ Hours)

Coefficients:
            Estimate Std. Error t value Pr(>|t|)    
(Intercept)   2.4837     2.5317   0.981    0.337    
Hours         9.7758     0.4529  21.583   <2e-16 ***
As we can see tfrom the pvalue Hours is significant for predicting the scores .

## Equation Coefficient
Coefficients:
(Intercept)        Hours  
      2.484        9.776  
Scores = Intercept + Hours* Coefficient
Scores = 2.484 + Hours * 9.776
![alt-text](https://github.com/jaikushwaha7/Linear-Regression-Basic-Task1/blob/main/LR_Visualization.gif)
## The simple linear regression equation tells us that the predicted scores for the Hours studied will increase by 9.776  time Scores for every one percent increase in the Hours of study.
Now if more terms are added to the models then comes Multiple linear regression. 
1. So again find the best fit line using R square. 
2. But another term is added called adjusted R square.

## R-squared:  0.9529,	Adjusted R-squared:  0.9509 

## Strength of best fit line:
R-squared is a best metric to measure the strength of the best fit line
• R-squared is a statistical measure of how close the data are to the fitted regression line
• It always takes a value between 0 & 1, 1 indicates that the variance in dependent variables is completely explained by the independent variable • Mathematically, R squared = 1 — RSS/ TSS where, RSS = Residual sum of square TSS = Total sum of square

Coefficient of determination
R squared = 1 — RSS / TSS where, RSS = Residual sum of square TSS = Total sum of square R-squared: Best fit line Example •Dependent variable: Scores •Independent variable: Hours
• indicates that 95.29% of the variation in ‘Scores’ is explained by the independent variable, ‘Hours studied'

# Assumption in Linear Regression<h2>
 1. Linear relationship : The regression model is linear in parameter o For example, the below equation shows linear relationship in parameters. Top-1 : Assumptions Y = β0 + β1 * X1 2 + β2 *X2 • Linearity implies that the coefficient of variables are linear in nature not the variable in itself • Non-Linear Equation, it indicates that coefficients are not varying linearly
 2. Multivariate normality :Normality of residuals i.e. residuals should follow a bell curve distribution with zero mean
Detect using plot of residuals
Possible cause: Missing X
 3. No or little multicollinearity : No Multicollinearity among independent variables
Multi collinear variables should be removed from the final model
VIF (variance inflation factor) is used to remove multi collinearity.
 4. No auto-correlation
 5. Homoscedasticity ->Homoscedasticity of residuals or equal variance
Opposite of Homoscedasticity is Heteroscedasticity — When the error variance changes in a systematic pattern with changes in the X value.
  
# Conclusion<h2>

So in all, from understanding the business problem to final modelling there are so many hurdles but these hurdles tell more about the data that no other model does. As we know about the black box models they work on different level but the interpretability of SLR and MLR are above all which helps the BA to summarize the output to business in an effective way. So some pains are good to have and move forward taking the best out of it.
Meaning that, error variance itself changes with value of X
Appropriate transformation can eliminate the heteroscedasticity problem
