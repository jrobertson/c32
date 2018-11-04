#!/usr/bin/env ruby

# file: c32.rb


module ColouredText
  refine String do

    colours = %i(black red green brown blue magenta cyan gray)    
    colours.each.with_index {|c,i| define_method(c){ colorize(30+i)}}
    bg_colours = colours.map {|c| ('bg_' + c.to_s).to_sym}\
        .each.with_index {|c,i| define_method(c){ colorize(40+i)}}

    def debug()
      "debug: ".green + self.gsub(/(?=\b\w+\: )/,"\n   ")\
          .gsub(/(?<=\: )\w+/) {|x| x.green.bold }\
          .gsub(/\w+\:(?= )/) {|x| ("%s" % x).cyan.bold} + "\n\n"
    end

    def warn()
      "warning: ".brown + Time.now.strftime("%H:%M:%S").cyan + ' ' + self
    end

    alias warning warn

    def error()
      "error: ".red.bold + Time.now.strftime("%Y-%b-%d %H:%M").cyan + ' ' + self
    end

    alias err error

    def bold()
      "\e[1m#{self}\e[22m"
    end

    def info()
      "info: ".bold + self
    end

    def highlight()
      self.brown.bold
    end

    private

    def colorize(color_code)
      "\e[#{color_code}m#{self}\e[0m"
    end

  end
end
