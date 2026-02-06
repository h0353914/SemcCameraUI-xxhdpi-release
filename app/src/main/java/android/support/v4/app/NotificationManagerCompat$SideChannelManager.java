package android.support.v4.app;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.ResolveInfo;
import android.os.DeadObjectException;
import android.os.Handler;
import android.os.Handler$Callback;
import android.os.HandlerThread;
import android.os.IBinder;
import android.os.Message;
import android.os.RemoteException;
import android.util.Log;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map$Entry;
import java.util.Set;

class NotificationManagerCompat$SideChannelManager implements Handler$Callback, ServiceConnection {
    private static final int MSG_QUEUE_TASK = 0;
    private static final int MSG_RETRY_LISTENER_QUEUE = 3;
    private static final int MSG_SERVICE_CONNECTED = 1;
    private static final int MSG_SERVICE_DISCONNECTED = 2;
    private final Context mContext;
    private final Handler mHandler;
    private final Map<ComponentName, NotificationManagerCompat$SideChannelManager$ListenerRecord> mRecordMap = new HashMap();
    private Set<String> mCachedEnabledPackages = new HashSet();
    private final HandlerThread mHandlerThread = new HandlerThread("NotificationManagerCompat");

    NotificationManagerCompat$SideChannelManager(Context context) {
        this.mContext = context;
        this.mHandlerThread.start();
        this.mHandler = new Handler(this.mHandlerThread.getLooper(), this);
    }

    public void queueTask(NotificationManagerCompat$Task notificationManagerCompat$Task) {
        this.mHandler.obtainMessage(0, notificationManagerCompat$Task).sendToTarget();
    }

    @Override // android.os.Handler$Callback
    public boolean handleMessage(Message message) {
        switch (message.what) {
            case 0:
                handleQueueTask((NotificationManagerCompat$Task) message.obj);
                break;
            case 1:
                NotificationManagerCompat$ServiceConnectedEvent notificationManagerCompat$ServiceConnectedEvent = (NotificationManagerCompat$ServiceConnectedEvent) message.obj;
                handleServiceConnected(notificationManagerCompat$ServiceConnectedEvent.componentName, notificationManagerCompat$ServiceConnectedEvent.iBinder);
                break;
            case 2:
                handleServiceDisconnected((ComponentName) message.obj);
                break;
            case 3:
                handleRetryListenerQueue((ComponentName) message.obj);
                break;
        }
        return true;
    }

    private void handleQueueTask(NotificationManagerCompat$Task notificationManagerCompat$Task) {
        updateListenerMap();
        for (NotificationManagerCompat$SideChannelManager$ListenerRecord notificationManagerCompat$SideChannelManager$ListenerRecord : this.mRecordMap.values()) {
            notificationManagerCompat$SideChannelManager$ListenerRecord.taskQueue.add(notificationManagerCompat$Task);
            processListenerQueue(notificationManagerCompat$SideChannelManager$ListenerRecord);
        }
    }

    private void handleServiceConnected(ComponentName componentName, IBinder iBinder) {
        NotificationManagerCompat$SideChannelManager$ListenerRecord notificationManagerCompat$SideChannelManager$ListenerRecord = this.mRecordMap.get(componentName);
        if (notificationManagerCompat$SideChannelManager$ListenerRecord != null) {
            notificationManagerCompat$SideChannelManager$ListenerRecord.service = INotificationSideChannel$Stub.asInterface(iBinder);
            notificationManagerCompat$SideChannelManager$ListenerRecord.retryCount = 0;
            processListenerQueue(notificationManagerCompat$SideChannelManager$ListenerRecord);
        }
    }

    private void handleServiceDisconnected(ComponentName componentName) {
        NotificationManagerCompat$SideChannelManager$ListenerRecord notificationManagerCompat$SideChannelManager$ListenerRecord = this.mRecordMap.get(componentName);
        if (notificationManagerCompat$SideChannelManager$ListenerRecord != null) {
            ensureServiceUnbound(notificationManagerCompat$SideChannelManager$ListenerRecord);
        }
    }

    private void handleRetryListenerQueue(ComponentName componentName) {
        NotificationManagerCompat$SideChannelManager$ListenerRecord notificationManagerCompat$SideChannelManager$ListenerRecord = this.mRecordMap.get(componentName);
        if (notificationManagerCompat$SideChannelManager$ListenerRecord != null) {
            processListenerQueue(notificationManagerCompat$SideChannelManager$ListenerRecord);
        }
    }

    @Override // android.content.ServiceConnection
    public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        if (Log.isLoggable("NotifManCompat", 3)) {
            Log.d("NotifManCompat", "Connected to service " + componentName);
        }
        this.mHandler.obtainMessage(1, new NotificationManagerCompat$ServiceConnectedEvent(componentName, iBinder)).sendToTarget();
    }

    @Override // android.content.ServiceConnection
    public void onServiceDisconnected(ComponentName componentName) {
        if (Log.isLoggable("NotifManCompat", 3)) {
            Log.d("NotifManCompat", "Disconnected from service " + componentName);
        }
        this.mHandler.obtainMessage(2, componentName).sendToTarget();
    }

    private void updateListenerMap() {
        Set<String> enabledListenerPackages = NotificationManagerCompat.getEnabledListenerPackages(this.mContext);
        if (enabledListenerPackages.equals(this.mCachedEnabledPackages)) {
            return;
        }
        this.mCachedEnabledPackages = enabledListenerPackages;
        List<ResolveInfo> listQueryIntentServices = this.mContext.getPackageManager().queryIntentServices(new Intent().setAction("android.support.BIND_NOTIFICATION_SIDE_CHANNEL"), 0);
        HashSet<ComponentName> hashSet = new HashSet();
        for (ResolveInfo resolveInfo : listQueryIntentServices) {
            if (enabledListenerPackages.contains(resolveInfo.serviceInfo.packageName)) {
                ComponentName componentName = new ComponentName(resolveInfo.serviceInfo.packageName, resolveInfo.serviceInfo.name);
                if (resolveInfo.serviceInfo.permission != null) {
                    Log.w("NotifManCompat", "Permission present on component " + componentName + ", not adding listener record.");
                } else {
                    hashSet.add(componentName);
                }
            }
        }
        for (ComponentName componentName2 : hashSet) {
            if (!this.mRecordMap.containsKey(componentName2)) {
                if (Log.isLoggable("NotifManCompat", 3)) {
                    Log.d("NotifManCompat", "Adding listener record for " + componentName2);
                }
                this.mRecordMap.put(componentName2, new NotificationManagerCompat$SideChannelManager$ListenerRecord(componentName2));
            }
        }
        Iterator<Map$Entry<ComponentName, NotificationManagerCompat$SideChannelManager$ListenerRecord>> it = this.mRecordMap.entrySet().iterator();
        while (it.hasNext()) {
            Map$Entry<ComponentName, NotificationManagerCompat$SideChannelManager$ListenerRecord> next = it.next();
            if (!hashSet.contains(next.getKey())) {
                if (Log.isLoggable("NotifManCompat", 3)) {
                    Log.d("NotifManCompat", "Removing listener record for " + next.getKey());
                }
                ensureServiceUnbound(next.getValue());
                it.remove();
            }
        }
    }

    private boolean ensureServiceBound(NotificationManagerCompat$SideChannelManager$ListenerRecord notificationManagerCompat$SideChannelManager$ListenerRecord) {
        if (notificationManagerCompat$SideChannelManager$ListenerRecord.bound) {
            return true;
        }
        notificationManagerCompat$SideChannelManager$ListenerRecord.bound = this.mContext.bindService(new Intent("android.support.BIND_NOTIFICATION_SIDE_CHANNEL").setComponent(notificationManagerCompat$SideChannelManager$ListenerRecord.componentName), this, 33);
        if (notificationManagerCompat$SideChannelManager$ListenerRecord.bound) {
            notificationManagerCompat$SideChannelManager$ListenerRecord.retryCount = 0;
        } else {
            Log.w("NotifManCompat", "Unable to bind to listener " + notificationManagerCompat$SideChannelManager$ListenerRecord.componentName);
            this.mContext.unbindService(this);
        }
        return notificationManagerCompat$SideChannelManager$ListenerRecord.bound;
    }

    private void ensureServiceUnbound(NotificationManagerCompat$SideChannelManager$ListenerRecord notificationManagerCompat$SideChannelManager$ListenerRecord) {
        if (notificationManagerCompat$SideChannelManager$ListenerRecord.bound) {
            this.mContext.unbindService(this);
            notificationManagerCompat$SideChannelManager$ListenerRecord.bound = false;
        }
        notificationManagerCompat$SideChannelManager$ListenerRecord.service = null;
    }

    private void scheduleListenerRetry(NotificationManagerCompat$SideChannelManager$ListenerRecord notificationManagerCompat$SideChannelManager$ListenerRecord) {
        if (this.mHandler.hasMessages(3, notificationManagerCompat$SideChannelManager$ListenerRecord.componentName)) {
            return;
        }
        notificationManagerCompat$SideChannelManager$ListenerRecord.retryCount++;
        if (notificationManagerCompat$SideChannelManager$ListenerRecord.retryCount > 6) {
            Log.w("NotifManCompat", "Giving up on delivering " + notificationManagerCompat$SideChannelManager$ListenerRecord.taskQueue.size() + " tasks to " + notificationManagerCompat$SideChannelManager$ListenerRecord.componentName + " after " + notificationManagerCompat$SideChannelManager$ListenerRecord.retryCount + " retries");
            notificationManagerCompat$SideChannelManager$ListenerRecord.taskQueue.clear();
            return;
        }
        int i = 1000 * (1 << (notificationManagerCompat$SideChannelManager$ListenerRecord.retryCount - 1));
        if (Log.isLoggable("NotifManCompat", 3)) {
            Log.d("NotifManCompat", "Scheduling retry for " + i + " ms");
        }
        this.mHandler.sendMessageDelayed(this.mHandler.obtainMessage(3, notificationManagerCompat$SideChannelManager$ListenerRecord.componentName), i);
    }

    private void processListenerQueue(NotificationManagerCompat$SideChannelManager$ListenerRecord notificationManagerCompat$SideChannelManager$ListenerRecord) {
        if (Log.isLoggable("NotifManCompat", 3)) {
            Log.d("NotifManCompat", "Processing component " + notificationManagerCompat$SideChannelManager$ListenerRecord.componentName + ", " + notificationManagerCompat$SideChannelManager$ListenerRecord.taskQueue.size() + " queued tasks");
        }
        if (notificationManagerCompat$SideChannelManager$ListenerRecord.taskQueue.isEmpty()) {
            return;
        }
        if (!ensureServiceBound(notificationManagerCompat$SideChannelManager$ListenerRecord) || notificationManagerCompat$SideChannelManager$ListenerRecord.service == null) {
            scheduleListenerRetry(notificationManagerCompat$SideChannelManager$ListenerRecord);
            return;
        }
        while (true) {
            NotificationManagerCompat$Task notificationManagerCompat$TaskPeek = notificationManagerCompat$SideChannelManager$ListenerRecord.taskQueue.peek();
            if (notificationManagerCompat$TaskPeek == null) {
                break;
            }
            try {
                if (Log.isLoggable("NotifManCompat", 3)) {
                    Log.d("NotifManCompat", "Sending task " + notificationManagerCompat$TaskPeek);
                }
                notificationManagerCompat$TaskPeek.send(notificationManagerCompat$SideChannelManager$ListenerRecord.service);
                notificationManagerCompat$SideChannelManager$ListenerRecord.taskQueue.remove();
            } catch (DeadObjectException unused) {
                if (Log.isLoggable("NotifManCompat", 3)) {
                    Log.d("NotifManCompat", "Remote service has died: " + notificationManagerCompat$SideChannelManager$ListenerRecord.componentName);
                }
            } catch (RemoteException e) {
                Log.w("NotifManCompat", "RemoteException communicating with " + notificationManagerCompat$SideChannelManager$ListenerRecord.componentName, e);
            }
        }
        if (notificationManagerCompat$SideChannelManager$ListenerRecord.taskQueue.isEmpty()) {
            return;
        }
        scheduleListenerRetry(notificationManagerCompat$SideChannelManager$ListenerRecord);
    }
}
