files(name='docker_files', sources=['ubuntu-pkg.txt'])

docker_image(
    name="docker",
    source="Dockerfile",
    image_tags=['0.1', 'dev'],
    repository="hamzilla/backups",
    dependencies=[':docker_files'],
)
