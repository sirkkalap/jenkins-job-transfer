# jenkins-job-transfer
Simple Bash scripts to push and pull Jenkins job configs

## Usage

Edit push and pull scripts and add required credentials to them.

Pull all jobs from Jenkins server.

```bash
    pull-jenkins-jobs
```

Push one job back to Jenkins server.

```bash
    push-jenkins-job job-filename
```

## Details

Scripts use the url-encoded job-names for filenames. Ugly, but simple.
