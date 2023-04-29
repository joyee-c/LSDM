# LSDM: TidyMe

## The Problem
The modern world is data driven and the data that we collect in a day is huge. Over time, it gets tedious to manage such large and varied data manually. This often creates a lot of cluttered data, which requires a great manual effort to organize and categorize by the data owner. In this project we are addressing this everyday concern by creating a cloud storage application that helps users to efficiently organize notes (text, PDF), videos and photos by using cutting-edge Artificial Intelligence to classify contents into meaningful categories for the user. 

## Implementation

### Data Collection
1. For videos we used YouTube's robust 8 million [dataset](https://research.google.com/youtube8m/download.html)
  * Train Dataset required
  * Validate Dataset required
  * Test Dataset required
2. For Images we used kaggles's image [dataset](https://www.kaggle.com/datasets/pavansanagapati/images-dataset) with these data:
  * Bikes
  * Cars
  * Cats
  * Dogs
  * Flowers
  * Horses
  * Human
3. For text we used BBC [dataset](http://mlg.ucd.ie/datasets/bbc.html) which consists of:
  * 2225 documents from BBC corresponsing to stories in 5 topiucs from 2004-2005
  * 5 class labels
    * Business
    * Entertainment
    * Politics
    * Sports
    * Tech

### Classification
Once data was collected, we were able to use Google's pre-trained models to test classification & annotation on our datasets which we stored in google cloud buckets.
1. [Video] (https://cloud.google.com/video-intelligence/docs/streaming/video-classification)
2. [Image] (https://cloud.google.com/ai-platform/training/docs/algorithms/image-classification-start)
3. [Text] (https://cloud.google.com/natural-language/docs/classify-text-tutorial)

Google's classification is very reliable and upon testing on our data found that it tracked an accuracy of above 60% for all that ois video, image and text.
