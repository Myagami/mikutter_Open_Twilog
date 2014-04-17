# -*- coding: utf-8 -*-
# favstarを開く

Plugin.create(:open_twilog) do
  command(:open_twilog,
          name: 'こいつのtwilogを見る',
          condition: Plugin::Command[:HasMessage],
          visible: true,
          role: :timeline) do |m|
    m.messages.map do |msg|
      Gtk::openurl("http://twilog.org/#{msg.message.user.idname}")
    end
  end
end
