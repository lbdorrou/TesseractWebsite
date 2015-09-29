# This is the main config file for the website
# no its not pretty, but its simple and easy
# there will eventually be a web interface for this

# The Ruby on Rails server MUST be restarted for any changes to take effect!
# As always, use discretion!


# Categories for the Projects page, This serves two purposes.
# 1) This list will populate the select box for creating a new Project.
# 2) The order that they are listed in is the order they will appear on the screen
Rails.application.config.x.displayOptions.gameCategories = ['Games','Visualizations', 'Mythos Unbound', 'Saeculum', 'Student Games', 'Installations']

# Same as above except for courses
Rails.application.config.x.displayOptions.courseCategories = ['University of Arkansas','Mooc']

# Same as above except for users
Rails.application.config.x.displayOptions.userCategories = ['Leadership', 'Art', 'Audio' , 'Design' , 'HR' , 'Code' , 'Narrative' , 'Support' , 'QA']


# This is the configurations for the front page showcase of projects/courses
# Please double check the name of the project/course shown
# Min 4 , Max 8
# Order Matters
Rails.application.config.x.displayOptions.showcase = ['PlaceHolder','PlaceHolder2','PlaceHolder Course','TestFile Upload']

# Max number of blogs and news stories each on the front page (I.E  a value of four would mean 4 news stories AND 4 blogs)
Rails.application.config.x.displayOptions.newsCount = 4


# Text for about us page
Rails.application.config.x.displayOptions.aboutText = 'Tesseract IS a game development studio housed at the University of Arkansas and headed by Professor David Fredrick of the Humanities department. Through our partnership with the University of Arkansas Global Campus, Tesseract has designed and developed two game-based online courses, Mythos Unbound (Greek and Roman Mythology) and Saeculum (Roman Civilization). At our core, Tesseract brings together undergraduate and graduate students from a variety of disciplines to give them valuable experience in the game development process. The idea of students developing coursework for other students is a unique one and gives us an incredible source of feedback on our projects. Tesseract is also working to expand into the architectural visualization and independent games markets in the near future.'

# Text for Contact us page
Rails.application.config.x.displayOptions.contactText = 'Are you interested in job opportunities at Tesseract or wanting to know more? Send us a message at our email and we will get back to you as soon as possible.'


# Social Media Links
Rails.application.config.x.displayOptions.facebook = 'https://www.facebook.com/TesseractInteractive'
Rails.application.config.x.displayOptions.twitter = 'https://twitter.com/TesseractUA'
Rails.application.config.x.displayOptions.youtube = 'https://www.youtube.com/channel/UCU7MNS2UvZFeTezKnLe72Rw'

# Contact Email
Rails.application.config.x.displayOptions.contactEmail = 'tesseract.interactive@gmail.com'

# Enable Social media
Rails.application.config.x.displayOptions.enableSocialFacebook = true
Rails.application.config.x.displayOptions.enableSocialTwitter = true
Rails.application.config.x.displayOptions.enableSocialYoutube = true

# Enable share or tweet buttons
Rails.application.config.x.displayOptions.enableLikes = true
Rails.application.config.x.displayOptions.enableTweet = true
