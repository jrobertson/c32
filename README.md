# Introducing the c32 gem

## Usage

    require 'c32'

    class Tester
      using ColouredText

      def foo()
        
        puts "ColouredText".highlight + ' provided by the ' + "c32".bold + ' gem'
        puts 
        puts "wow".debug
        puts "no action taken".warn
        puts "something went wrong".error
        puts "Connected ".info
      end
    end

    Tester.new.foo

## Sample output

![screenshot of coloured text in the command-line](http://a0.jamesrobertson.eu/r/images/2018/nov/03/c32.jpg)

## Resources

* c32 https://rubygems.org/gems/c32
* colors - Colorized Ruby output https://stackoverflow.com/questions/1489183/colorized-ruby-output

colouredtext color colour text gem debug colorize colourize
