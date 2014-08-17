.class public Lcom/android/internal/app/ShutdownThreadFeature;
.super Ljava/lang/Object;
.source "ShutdownThreadFeature.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/ShutdownThreadFeature$Led;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ShutdownThread"


# instance fields
.field final bluetooth:Landroid/bluetooth/IBluetooth;

.field bluetoothOff:Z

.field final connectivity:Landroid/net/IConnectivityManager;

.field private mContext:Landroid/content/Context;

.field final nfc:Landroid/nfc/INfcAdapter;

.field nfcOff:Z

.field final phone:Lcom/android/internal/telephony/ITelephony;

.field final phone2:Lcom/android/internal/telephony/ITelephony;

.field radioOff:Z

.field radioOff2:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 66
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lcom/android/internal/app/ShutdownThreadFeature;->mContext:Landroid/content/Context;

    .line 68
    const-string v0, "nfc"

    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/nfc/INfcAdapter$Stub;->asInterface(Landroid/os/IBinder;)Landroid/nfc/INfcAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/ShutdownThreadFeature;->nfc:Landroid/nfc/INfcAdapter;

    .line 69
    const-string v0, "phone"

    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/ShutdownThreadFeature;->phone:Lcom/android/internal/telephony/ITelephony;

    .line 70
    const-string v0, "bluetooth"

    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/IBluetooth$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetooth;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/ShutdownThreadFeature;->bluetooth:Landroid/bluetooth/IBluetooth;

    .line 71
    const-string v0, "phone2"

    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/ShutdownThreadFeature;->phone2:Lcom/android/internal/telephony/ITelephony;

    .line 72
    const-string v0, "connectivity"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/ShutdownThreadFeature;->connectivity:Landroid/net/IConnectivityManager;

    .line 73
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/app/ShutdownThreadFeature;->radioOff2:Z

    iput-boolean v0, p0, Lcom/android/internal/app/ShutdownThreadFeature;->bluetoothOff:Z

    iput-boolean v0, p0, Lcom/android/internal/app/ShutdownThreadFeature;->radioOff:Z

    iput-boolean v0, p0, Lcom/android/internal/app/ShutdownThreadFeature;->nfcOff:Z

    .line 74
    return-void
.end method

.method public static SituationVolume(Landroid/media/AudioManager;Landroid/media/MediaPlayer;)V
    .locals 2
    .parameter "audioManager"
    .parameter "mp"

    .prologue
    .line 61
    const-string v1, "situation=8;device=0"

    invoke-virtual {p0, v1}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 62
    .local v0, situationVol:F
    invoke-virtual {p1, v0, v0}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 63
    return-void
.end method


# virtual methods
.method public radioShutdown()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 103
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/app/ShutdownThreadFeature;->nfc:Landroid/nfc/INfcAdapter;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/app/ShutdownThreadFeature;->nfc:Landroid/nfc/INfcAdapter;

    invoke-interface {v3}, Landroid/nfc/INfcAdapter;->getState()I

    move-result v3

    if-ne v3, v2, :cond_5

    :cond_0
    move v3, v2

    :goto_0
    iput-boolean v3, p0, Lcom/android/internal/app/ShutdownThreadFeature;->nfcOff:Z

    .line 105
    iget-boolean v3, p0, Lcom/android/internal/app/ShutdownThreadFeature;->nfcOff:Z

    if-nez v3, :cond_1

    .line 106
    const-string v3, "ShutdownThread"

    const-string v4, "Turning off NFC..."

    invoke-static {v3, v4}, Lcom/android/internal/app/ShutdownThread$Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    iget-object v3, p0, Lcom/android/internal/app/ShutdownThreadFeature;->nfc:Landroid/nfc/INfcAdapter;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Landroid/nfc/INfcAdapter;->disable(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    :cond_1
    :goto_1
    :try_start_1
    iget-object v3, p0, Lcom/android/internal/app/ShutdownThreadFeature;->phone:Lcom/android/internal/telephony/ITelephony;

    if-nez v3, :cond_2

    move v1, v2

    :cond_2
    iput-boolean v1, p0, Lcom/android/internal/app/ShutdownThreadFeature;->radioOff:Z

    .line 119
    iget-boolean v1, p0, Lcom/android/internal/app/ShutdownThreadFeature;->radioOff:Z

    if-nez v1, :cond_3

    .line 120
    const-string v1, "ShutdownThread"

    const-string v3, "Turning off radio..."

    invoke-static {v1, v3}, Lcom/android/internal/app/ShutdownThread$Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    iget-object v1, p0, Lcom/android/internal/app/ShutdownThreadFeature;->phone:Lcom/android/internal/telephony/ITelephony;

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Lcom/android/internal/telephony/ITelephony;->setRadio(Z)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 130
    :cond_3
    :goto_2
    :try_start_2
    iget-object v1, p0, Lcom/android/internal/app/ShutdownThreadFeature;->connectivity:Landroid/net/IConnectivityManager;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/internal/app/ShutdownThreadFeature;->connectivity:Landroid/net/IConnectivityManager;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/net/IConnectivityManager;->isNetworkSupported(I)Z

    move-result v1

    if-nez v1, :cond_4

    .line 131
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/app/ShutdownThreadFeature;->radioOff:Z

    .line 132
    const-string v1, "ShutdownThread"

    const-string v2, "Skip radio off : wifi-only"

    invoke-static {v1, v2}, Lcom/android/internal/app/ShutdownThread$Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 152
    :cond_4
    :goto_3
    return-void

    :cond_5
    move v3, v1

    .line 103
    goto :goto_0

    .line 109
    :catch_0
    move-exception v0

    .line 110
    .local v0, ex:Landroid/os/RemoteException;
    const-string v3, "ShutdownThread"

    const-string v4, "RemoteException during NFC shutdown"

    invoke-static {v3, v4, v0}, Lcom/android/internal/app/ShutdownThread$Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    .line 111
    iput-boolean v2, p0, Lcom/android/internal/app/ShutdownThreadFeature;->nfcOff:Z

    goto :goto_1

    .line 123
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 124
    .restart local v0       #ex:Landroid/os/RemoteException;
    const-string v1, "ShutdownThread"

    const-string v3, "RemoteException during radio shutdown"

    invoke-static {v1, v3, v0}, Lcom/android/internal/app/ShutdownThread$Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    .line 125
    iput-boolean v2, p0, Lcom/android/internal/app/ShutdownThreadFeature;->radioOff:Z

    goto :goto_2

    .line 134
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_2
    move-exception v0

    .line 135
    .restart local v0       #ex:Landroid/os/RemoteException;
    const-string v1, "ShutdownThread"

    const-string v2, "RemoteException connectivity"

    invoke-static {v1, v2, v0}, Lcom/android/internal/app/ShutdownThread$Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    goto :goto_3
.end method

.method public shutdownProperties()V
    .locals 2

    .prologue
    .line 92
    const-string v0, "ShutdownThread"

    const-string v1, "!@sys.deviceOffReq = 1"

    invoke-static {v0, v1}, Lcom/android/internal/app/ShutdownThread$Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    const-string v0, "sys.deviceOffReq"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    const-string v0, "sys.radio.shutdown"

    const-string v1, "true"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    return-void
.end method

.method public waitRadioShutdown(Z)V
    .locals 11
    .parameter "reboot"

    .prologue
    const/16 v10, 0xa

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 156
    const/16 v0, 0x18

    .line 157
    .local v0, MAX_NUM_PHONE_STATE_READS:I
    const/16 v1, 0x1f4

    .line 159
    .local v1, PHONE_STATE_POLL_SLEEP_MSEC:I
    const-string v5, "ShutdownThread"

    const-string v8, "before Bluetooth"

    invoke-static {v5, v8}, Lcom/android/internal/app/ShutdownThread$Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    :try_start_0
    iget-object v5, p0, Lcom/android/internal/app/ShutdownThreadFeature;->bluetooth:Landroid/bluetooth/IBluetooth;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/internal/app/ShutdownThreadFeature;->bluetooth:Landroid/bluetooth/IBluetooth;

    invoke-interface {v5}, Landroid/bluetooth/IBluetooth;->getBluetoothState()I

    move-result v5

    if-ne v5, v10, :cond_6

    :cond_0
    move v5, v6

    :goto_0
    iput-boolean v5, p0, Lcom/android/internal/app/ShutdownThreadFeature;->bluetoothOff:Z

    .line 163
    iget-boolean v5, p0, Lcom/android/internal/app/ShutdownThreadFeature;->bluetoothOff:Z

    if-nez v5, :cond_1

    .line 164
    const-string v5, "ShutdownThread"

    const-string v8, "Disabling Bluetooth..."

    invoke-static {v5, v8}, Lcom/android/internal/app/ShutdownThread$Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    iget-object v5, p0, Lcom/android/internal/app/ShutdownThreadFeature;->bluetooth:Landroid/bluetooth/IBluetooth;

    const/4 v8, 0x0

    invoke-interface {v5, v8}, Landroid/bluetooth/IBluetooth;->disable(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    :cond_1
    :goto_1
    const-string v5, "ShutdownThread"

    const-string v8, "Waiting for NFC, Bluetooth and Radio..."

    invoke-static {v5, v8}, Lcom/android/internal/app/ShutdownThread$Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    const/4 v3, 0x0

    .local v3, i:I
    :goto_2
    const/16 v5, 0x18

    if-ge v3, v5, :cond_5

    .line 176
    iget-boolean v5, p0, Lcom/android/internal/app/ShutdownThreadFeature;->bluetoothOff:Z

    if-nez v5, :cond_2

    .line 178
    :try_start_1
    iget-object v5, p0, Lcom/android/internal/app/ShutdownThreadFeature;->bluetooth:Landroid/bluetooth/IBluetooth;

    invoke-interface {v5}, Landroid/bluetooth/IBluetooth;->getBluetoothState()I

    move-result v5

    if-ne v5, v10, :cond_7

    move v5, v6

    :goto_3
    iput-boolean v5, p0, Lcom/android/internal/app/ShutdownThreadFeature;->bluetoothOff:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 185
    :cond_2
    :goto_4
    iget-boolean v5, p0, Lcom/android/internal/app/ShutdownThreadFeature;->nfcOff:Z

    if-nez v5, :cond_3

    .line 187
    :try_start_2
    iget-object v5, p0, Lcom/android/internal/app/ShutdownThreadFeature;->nfc:Landroid/nfc/INfcAdapter;

    invoke-interface {v5}, Landroid/nfc/INfcAdapter;->getState()I

    move-result v5

    if-ne v5, v6, :cond_8

    move v5, v6

    :goto_5
    iput-boolean v5, p0, Lcom/android/internal/app/ShutdownThreadFeature;->nfcOff:Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 198
    :cond_3
    :goto_6
    const-string v4, ""

    .line 199
    .local v4, repPhoneOff:Ljava/lang/String;
    const-string v5, "ril.deviceOffRes"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 201
    if-eqz v4, :cond_4

    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 203
    const-string v5, "ShutdownThread"

    const-string v8, "PhoneOff req resp"

    invoke-static {v5, v8}, Lcom/android/internal/app/ShutdownThread$Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    iput-boolean v6, p0, Lcom/android/internal/app/ShutdownThreadFeature;->radioOff:Z

    .line 226
    :cond_4
    iget-boolean v5, p0, Lcom/android/internal/app/ShutdownThreadFeature;->radioOff:Z

    if-eqz v5, :cond_9

    iget-boolean v5, p0, Lcom/android/internal/app/ShutdownThreadFeature;->bluetoothOff:Z

    if-eqz v5, :cond_9

    iget-boolean v5, p0, Lcom/android/internal/app/ShutdownThreadFeature;->nfcOff:Z

    if-eqz v5, :cond_9

    .line 227
    const-string v5, "ShutdownThread"

    const-string v6, "NFC, Radio and Bluetooth shutdown complete."

    invoke-static {v5, v6}, Lcom/android/internal/app/ShutdownThread$Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    .end local v4           #repPhoneOff:Ljava/lang/String;
    :cond_5
    return-void

    .end local v3           #i:I
    :cond_6
    move v5, v7

    .line 161
    goto :goto_0

    .line 167
    :catch_0
    move-exception v2

    .line 168
    .local v2, ex:Landroid/os/RemoteException;
    const-string v5, "ShutdownThread"

    const-string v8, "RemoteException during bluetooth shutdown"

    invoke-static {v5, v8, v2}, Lcom/android/internal/app/ShutdownThread$Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    .line 169
    iput-boolean v6, p0, Lcom/android/internal/app/ShutdownThreadFeature;->bluetoothOff:Z

    goto :goto_1

    .end local v2           #ex:Landroid/os/RemoteException;
    .restart local v3       #i:I
    :cond_7
    move v5, v7

    .line 178
    goto :goto_3

    .line 180
    :catch_1
    move-exception v2

    .line 181
    .restart local v2       #ex:Landroid/os/RemoteException;
    const-string v5, "ShutdownThread"

    const-string v8, "RemoteException during bluetooth shutdown"

    invoke-static {v5, v8, v2}, Lcom/android/internal/app/ShutdownThread$Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    .line 182
    iput-boolean v6, p0, Lcom/android/internal/app/ShutdownThreadFeature;->bluetoothOff:Z

    goto :goto_4

    .end local v2           #ex:Landroid/os/RemoteException;
    :cond_8
    move v5, v7

    .line 187
    goto :goto_5

    .line 188
    :catch_2
    move-exception v2

    .line 189
    .restart local v2       #ex:Landroid/os/RemoteException;
    const-string v5, "ShutdownThread"

    const-string v8, "RemoteException during NFC shutdown"

    invoke-static {v5, v8, v2}, Lcom/android/internal/app/ShutdownThread$Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    .line 190
    iput-boolean v6, p0, Lcom/android/internal/app/ShutdownThreadFeature;->nfcOff:Z

    goto :goto_6

    .line 231
    .end local v2           #ex:Landroid/os/RemoteException;
    .restart local v4       #repPhoneOff:Ljava/lang/String;
    :cond_9
    const-string v5, "ShutdownThread"

    const-string v8, "before SystemClock.sleep(PHONE_STATE_POLL_SLEEP_MSEC)"

    invoke-static {v5, v8}, Lcom/android/internal/app/ShutdownThread$Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    const-wide/16 v8, 0x1f4

    invoke-static {v8, v9}, Landroid/os/SystemClock;->sleep(J)V

    .line 233
    const-string v5, "ShutdownThread"

    const-string v8, "after SystemClock.sleep(PHONE_STATE_POLL_SLEEP_MSEC)"

    invoke-static {v5, v8}, Lcom/android/internal/app/ShutdownThread$Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    const-string v5, "ShutdownThread"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[Phone off retry:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "radioOff="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Lcom/android/internal/app/ShutdownThreadFeature;->radioOff:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " bluetoothOff="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Lcom/android/internal/app/ShutdownThreadFeature;->bluetoothOff:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/android/internal/app/ShutdownThread$Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2
.end method
