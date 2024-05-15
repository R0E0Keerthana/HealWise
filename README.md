# Ayurveda Dosha Analysis Project

This project is a simple website that introduces users to Ayurveda and helps them determine their dominant dosha (Vata, Pitta, or Kapha) through a questionnaire.

## Getting Started

### 1.Clone the repository:

>git clone https://your_repository_link.git

### 2.Open the files:

The project consists of three files:

- **index.html:** This is the landing page that introduces Ayurveda and the doshas.
- **main.html:** This is the questionnaire page that collects user information to determine their dosha.
- **process.jsp:** This file calculates the dominant dosha based on user answers and displays personalized information about the dosha.

*You can open the HTML files in any text editor or a code editor that supports HTML.
You'll need a JSP container like Tomcat or a web server configured to handle JSP files to open and process the process.jsp file.*

## How it Works
- The landing page (*index.html*) provides a brief overview of Ayurveda and the three doshas.
- Clicking the "Begin Your Dosha Analysis" button will navigate the user to the questionnaire page (*main.html*).
- The questionnaire asks a series of questions about the user's physical characteristics, hair, digestion, energy levels, sleep, and emotions.
- The questionnaire page (*main.html*) submits the answers to the server-side JSP file (*process.jsp*) for processing.
- The server-side JSP file (*process.jsp*) would ideally analyze the user's answers submitted from the questionnaire.
- It concluded the dosha based on a scoring system applied to the user's answers.
- The JSP would then display information about the user's dominant dosha on the same page, including:
  - Description of the dosha
  - Health complications associated with imbalanced dosha
  - Favorable and unfavorable foods
  - Recommendations for maintaining balance
 
# Contributing to HealWise

We welcome your contributions to the HealWise project! Here's how you can help us improve:
- **Fork the Repository:** Create your own copy of the HealWise repository on GitHub using the "Fork" button.
- **Clone Your Fork:** Clone your forked repository to your local machine using Git commands or your preferred Git client.
- **Make Changes:** Make your modifications to the code, following best practices and coding conventions. Ensure you test your changes thoroughly.
- **Commit Your Changes:** Commit your changes with clear and concise commit messages describing your contributions.
- **Push to Your Fork:** Push your committed changes to your forked repository on GitHub.
- **Create a Pull Request:** In GitHub, navigate to your forked repository and create a pull request to the main HealWise repository. This will notify us about your proposed changes.

# Disclaimer

This project is currently under development, and the HealWise application is a work in progress. While the provided functionalities offer a glimpse into the potential of the Ayurveda dosha analysis and guidance system, it's important to note that this is not a final product.
We continue to develop and refine HealWise to enhance its accuracy and user experience. Future features may include integration with healthcare providers, personalized recommendations based on user data, and a more comprehensive knowledge base on Ayurveda.
We appreciate your understanding and encourage you to contribute to the project's growth.

***Happy Coding and Healthy Healing!***

