enum PoolType { CPA, CSO, IIB }

extension PoolTypeExtension on PoolType {
  String get displayName {
    switch (this) {
      case PoolType.CPA:
        return "cpa";
      case PoolType.CSO:
        return "cso";
      case PoolType.IIB:
        return "iib";
      default:
        return "";
    }
  }
}
