# Testing resources built on AWS with Serverspec
It aims to automate the construction of the infrastructure environment.<br>
But I'm only talking about Serverspec here.<br>
[Click here][1] for an overview of the entire project.<br>
```
└── serverspec
    ├── Rakefile
    └── spec
        ├── payblog
        │   └── test_spec.rb
        └── spec_helper.rb
```
- Testing resources built on AWS using Serverspec.
- The directory structure is as shown above.
- The details of the resources to be tested are [listed here][2]
## Requirements
- rbenv 1.1.2-30-gc879cb0
- ruby 2.6.5p114

[1]: https://github.com/neetzama/jenkins_study
[2]: https://github.com/neetzama/cloudformation_study
