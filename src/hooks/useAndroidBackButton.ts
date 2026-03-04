import { useEffect } from 'react';
import { useNavigate, useLocation } from 'react-router-dom';

const isNative = () =>
  typeof (window as any).Capacitor !== 'undefined' &&
  (window as any).Capacitor.isNativePlatform();

export function useAndroidBackButton() {
  const navigate = useNavigate();
  const location = useLocation();

  useEffect(() => {
    if (!isNative()) return;

    let listenerHandle: { remove: () => void } | null = null;

    import('@capacitor/app').then(({ App }) => {
      App.addListener('backButton', () => {
        if (location.pathname === '/' || location.pathname === '') {
          App.exitApp();
        } else {
          navigate(-1);
        }
      }).then(handle => {
        listenerHandle = handle;
      });
    });

    return () => {
      listenerHandle?.remove();
    };
  }, [navigate, location.pathname]);
}
