import { StatusBar, Style } from '@capacitor/status-bar';
import { Keyboard } from '@capacitor/keyboard';

const isNative = () =>
  typeof (window as any).Capacitor !== 'undefined' &&
  (window as any).Capacitor.isNativePlatform();

export async function initCapacitor() {
  if (!isNative()) return;

  await StatusBar.setBackgroundColor({ color: '#2563eb' });
  await StatusBar.setStyle({ style: Style.Dark });

  Keyboard.addListener('keyboardWillShow', () => {
    document.body.style.paddingBottom = '0px';
  });
}
