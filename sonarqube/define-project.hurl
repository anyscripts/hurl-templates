#
# Create a project on SonarQube
# Ignore err400 if project exists
#
POST {{SONAR_URL}}/api/projects/create?name={{PROJECT_NAME}}&project{{PROJECT_NAME}}
Authorization: Bearer {{SONAR_TOKEN}}
HTTP *

#
# Add rules definition to project
#
POST {{SONAR_URL}}/api/qualityprofiles/add_project?language={{SONAR_LANGUAGE}}&projectKey={{PROJECT_NAME}}&qualityProfile={{SONAR_PROFILE}}
Authorization: Bearer {{SONAR_TOKEN}}
HTTP 204
