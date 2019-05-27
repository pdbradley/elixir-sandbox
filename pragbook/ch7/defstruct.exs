defmodule Subscriber do
  defstruct name: "", paid: false, over_18: true

  # s1 = %Subscriber{}
  # s2 = %Subscriber{name: "Dave"}
  # s3 = %Subscriber{name: "Mary", paid: true}
  # s4 = %Subscriber{ s3 | name: "Marie"}
end


defmodule Attendee do
  defstruct name: "", paid: false, over_18: true

  def may_attend_after_party(attendee = %Attendee{}) do
    attendee.over_18 && attendee.paid
  end

  def print_vip_badge(%Attendee{name: name}) when name != "" do
    IO.puts "badge for #{name}"
  end

  def print_vip_badge(%Attendee{name: name}) do
    raise "Missing Name for badge"
  end
end

defmodule Customer do
  defstruct name: "", company: ""
end

defmodule BugReport do
  defstruct owner: %Customer{}, details: "", severity: 1
end

#report = %BugReport{owner: %Customer{name: "Dave", company: "Pragmatic"}, details: "broken"}
