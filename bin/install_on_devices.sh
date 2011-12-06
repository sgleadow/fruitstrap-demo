# Do nothing unless we are running from the command line
if [ "$FRUITSTRAP_CLI" = "" ]; then
exit 0
fi

echo "******************"
echo "Installing app to device using fruitstrap..."
echo "Workspace location: $SRCROOT"
echo "Install location: $TARGET_BUILD_DIR/$FULL_PRODUCT_NAME"
echo "******************"

APP_DIR="$DSTROOT/$INSTALL_PATH"
APP_PATH=$APP_DIR/$FULL_PRODUCT_NAME
mkdir -p $APP_DIR
rm -rf $APP_PATH
cp -r "$TARGET_BUILD_DIR/$FULL_PRODUCT_NAME" $APP_PATH

for DEVICE_ID in `$SRCROOT/bin/iphone_detect | uniq`; do
  echo "----------------"
  echo "Installing $APP_PATH on $DEVICE_ID"
  echo "$SRCROOT/bin/fruitstrap $APP_PATH"
  $SRCROOT/bin/fruitstrap $APP_PATH $DEVICE_ID
  echo "----------------"
done

echo "******************"