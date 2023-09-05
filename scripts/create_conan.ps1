Expand-Archive -Path Post.zip -DestinationPath Post

Copy-Item -Path Post\Resources\DataSource.db -Destination ansys.motion.post_api\Resources

Remove-Item -Path "Post" -Force -Recurse
