from conans import ConanFile, tools

class MotionConan(ConanFile):
    name = "ansys.motion.post_api"
    version = "24.1"
    settings = "os"
    description = "<Description of ansys.motion.post_api here>"
    author = "Jinhong Kim <jinhong.kim@ansys.com>"
    url = "<Enter URL>"
    license = "<Enter License>"
    
    def package(self):
        self.copy("*", excludes=("*.py"))
