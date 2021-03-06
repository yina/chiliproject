#-- encoding: UTF-8
#-- copyright
# ChiliProject is a project management system.
#
# Copyright (C) 2010-2013 the ChiliProject Team
#
# This program is free software; you can redistribute it and/or
# modify it under the terms of the GNU General Public License
# as published by the Free Software Foundation; either version 2
# of the License, or (at your option) any later version.
#
# See doc/COPYRIGHT.rdoc for more details.
#++

class AddMissingIndexesToWikiPages < ActiveRecord::Migration
  def self.up
    add_index :wiki_pages, :wiki_id
    add_index :wiki_pages, :parent_id
  end

  def self.down
    remove_index :wiki_pages, :wiki_id
    remove_index :wiki_pages, :parent_id
  end
end
