# -*- coding: utf-8 -*-

module ApplicationHelper
  def full_title(page_title = '')
    base_title = "GLServer"
    if page_title.empty?
      base_title
    else
      page_title + " | " + base_title
    end
  end

  def print_date(date)
    if not date
      nil
    else
      now = Time.current
      if compare_time(date, now.ago(6.month))
      #if compare_time(date, now.ago(1.days))
        # date が半年以上前ならば、年と月日を返す
        date.strftime('%Y/%m/%d')
      else
        # date が半年以内ならば、月日と時刻を返す
        date.strftime('%m/%d %m:%d')
      end
    end
  end

  def print_date2(date)
    date.strftime('%m/%d')
  end

  def print_time(time)
    time.strftime('%H:%M')
  end

  def compare_time(time1, time2)
    time1.to_s(:time) > time2.to_s(:time)
  end

  def generate_id_long(name)
    md5 = Digest::MD5.new.update(name + Time.now.to_s)
    md5_string = md5.to_s
  end
  
  def moderate_new_edit_button_label()
		if controller.action_name == "new"
			"作成する"
		else
			"変更する"
		end
  end

  def sidebar_link_item(name, path)
    class_name = 'list-group-item list-group-item-action p-0 nav-item border-bottom border-secondary'

    if current_page?(path)
      class_name << ' active'
    
      content_tag :li, class:class_name do
        (link_to name, path, class: 'nav-link text-light')
      end
    else
      content_tag :li, class:class_name do
        (link_to name, path, class: 'nav-link')
      end
    end
  end
end