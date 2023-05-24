#
# Create a project on SonarQube
# Ignore err400 if project exists
#
POST {{SONAR_URL}}/api/projects/create?name={{PROJECT_NAME}}&project={{PROJECT_KEY}}&mainBranch={{PROJECT_MAIN_BRANCH}}
Authorization: Bearer {{SONAR_TOKEN}}
HTTP *

#
# Add rules definition to project
#
POST {{SONAR_URL}}/api/qualityprofiles/add_project?language={{SONAR_LANGUAGE}}&project={{PROJECT_KEY}}&qualityProfile={{SONAR_PROFILE}}
Authorization: Bearer {{SONAR_TOKEN}}
HTTP 204
