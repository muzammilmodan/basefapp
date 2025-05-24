class MenuItemData {
  String? menuTitle;
  String? menuIcon;
  String? routePath;
  bool? isSelect;

  MenuItemData(
    this.menuTitle,
    this.menuIcon,
    this.routePath, {
    this.isSelect = false,
  });
}
