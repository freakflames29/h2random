# Use an official Ruby runtime as the base image
FROM ruby:3.2.2

# Set the working directory in the container
WORKDIR /app

# Copy the Gemfile and Gemfile.lock into the container
COPY Gemfile Gemfile.lock ./

# Install dependencies
RUN bundle install

# Copy the rest of the application code into the container
COPY . .

# Expose the port your application will run on
EXPOSE 3000

# Start the application
CMD ["rails", "server", "-b", "0.0.0.0"]
