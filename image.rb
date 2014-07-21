#!/usr/bin/env ruby

'''
Created on 12 July 2014
'''

require 'gtk3'

class RubyApp < Gtk::Window

    def initialize
        super
        
        init_ui
    end
    
    def init_ui
    
        set_border_width 2
        
        image = Gtk::Image.new :file => "alissa.jpeg"
        add image
        
        set_title "Red Rock"
        signal_connect "destroy" do 
            Gtk.main_quit
        end
            
        set_window_position :center
        
        show_all            
    end
    
end

Gtk.init
    window = RubyApp.new
Gtk.main
