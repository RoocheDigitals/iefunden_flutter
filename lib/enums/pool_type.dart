enum PoolType { CPPA, CSO, IIB }

extension PoolTypeExtension on PoolType {
  String get displayName {
    switch (this) {
      case PoolType.CPPA:
        return "cppa";
      case PoolType.CSO:
        return "cso";
      case PoolType.IIB:
        return "iib";
      default:
        return "";
    }
  }
}
