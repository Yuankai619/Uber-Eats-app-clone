class StoreItem {
  final String imageUrl; // 圖片連結
  final String? label; // 綠底標籤(可選)
  final String storeName;
  final String fee;
  final String rating;
  final String time;

  StoreItem({
    required this.imageUrl,
    this.label,
    required this.storeName,
    required this.fee,
    required this.rating,
    required this.time,
  });
}
