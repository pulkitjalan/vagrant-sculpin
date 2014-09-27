Sculpin Vagrant provision script
===============

Vagrant image provision for Sculpin PHP. This vm also contains the awscli for uploading and serving the static site from s3. The setup is inspired by and is similar to laravel homestead.

## Configuration

Configure can be changed by copying  the `Sculpin.default.yaml` to `Sculpin.yaml` and then editing it.

## Usage

To test your static site:

```
cd /home/vagrant/www/your-project
serve
```

This will create a new `output_dev` directory in `your_project` and will start the sculpin server. The server is accessible at `vm_ip:8000`.
