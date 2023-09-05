Expand-Archive -Path Post.zip -DestinationPath Post

New-Item -Path ansys.motion.post_api
New-Item -Path ansys.motion.post_api\Resources
New-Item -Path ansys.motion.post_api\x64

Copy-Item -Path Post\Resources\DataSource.db -Destination ansys.motion.post_api\Resources

Remove-Item -Path "Post" -Force -Recurse
