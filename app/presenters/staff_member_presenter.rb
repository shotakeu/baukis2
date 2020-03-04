class StaffMemberPresenter < ModelPresenter
  # 職員の停止フラグのOn/Offを表現する記号を返す。
  # On : BALLOT_BOX_WITH_CHECK (U+2611)
  # Off: BALLOT_BOX (U+2610)
  def suspended_mark
    object.suspended? ?
      view_context.raw("&#x2611") :
      view_context.raw("&#x2610")
  end
end
