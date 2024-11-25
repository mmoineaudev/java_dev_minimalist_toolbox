# What we will do differently this time

* Naming conventions : 
  * private functions starts by 'private_'
* Every specialisation of a function has that function as a prefix, so we can "read" encapsulation


# What does it do 

* java
  * easy change of java env 
  * Qualimetry tool ? 
    * Counters : public private, protected, boolean, if, switch implements, @Bean, @Component,@Service, /*, * , */ , amount of lines per classes 
* maven
  * easy change of maven env
  * save compile results
  * prints git sumup
  * dependancy analysis (for finding CVE or upgrading librairies)
  * ...
* git
  * gitmojis
* utilities
* fun parts ? screen savers etc
* ...


# How to use it

go whereever you cloned the project : 

```
chmod +x start.sh && 
echo "./$(pwd)/start.sh" >> ~/.bashrc

# you should now see your line
tail -n -2 ~/.bashrc
```