## Objective
Magnitude of sensors increases from walking to stair ascent to stair descent

# Plan
## Visualize the hind and forefoot on sensor data on each other - [x]
- Plot data raw to show what is currenly looks like - [x]
- Remove the trend and plot again (detrend func) - [x]
## Seperate each gait cycle - [ ]
- Identify each stage (walking, ascend, descend) - [ ]
- Define what separates each cycle - [ ]
- Use this definition to loop through each part and separate data points into an array - [ ]
## Quantify each cycle - [ ]
Two methods:
### Absolute max - [ ]
- Identify absolute max/min in each cycle - [ ]
- subtract these to find the magnitude and store in another array - [ ]
### Average - [ ]
- Identify each relative max/min in a given cycle - [ ]
- Use the average of each respective category, then subtracting to find the magnitude and again store in an array - [ ]
## Determine the difference between each activity (if any) - [ ]
- Test for and remove outliers - [ ]
- Calculate average of each activity - [ ]
- Determine if there is a statistical difference between activities - [ ]
