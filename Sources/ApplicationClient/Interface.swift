public struct ApplicationClient {
  public var setIdleTimerDisabled: (Bool) -> Void

  public init(
    setIdleTimerDisabled: @escaping (Bool) -> Void
  ) {
    self.setIdleTimerDisabled = setIdleTimerDisabled
  }
}
