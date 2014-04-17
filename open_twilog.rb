# -*- coding: utf-8 -*-
# favstarを開く

Plugin.create(:open_favstar) do
  command(:open_favstar,
          name: 'こいつのfavstarを見る',
          condition: Plugin::Command[:HasMessage],
          visible: true,
          role: :timeline) do |m|
    m.messages.map do |msg|
      Gtk::openurl("http://twilor.org/#{msg.message.user.idname}")
    end
  end
end
