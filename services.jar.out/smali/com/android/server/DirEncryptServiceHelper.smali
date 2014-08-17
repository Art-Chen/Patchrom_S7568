.class public Lcom/android/server/DirEncryptServiceHelper;
.super Ljava/lang/Object;
.source "DirEncryptServiceHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/DirEncryptServiceHelper$1;,
        Lcom/android/server/DirEncryptServiceHelper$AppliedPolicies;,
        Lcom/android/server/DirEncryptServiceHelper$SDStorageEventListener;,
        Lcom/android/server/DirEncryptServiceHelper$Notify;,
        Lcom/android/server/DirEncryptServiceHelper$VoldResponse;,
        Lcom/android/server/DirEncryptServiceHelper$VoldCommand;,
        Lcom/android/server/DirEncryptServiceHelper$Command;,
        Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;,
        Lcom/android/server/DirEncryptServiceHelper$DirEncryptServiceBinderListener;
    }
.end annotation


# static fields
.field private static final APPLIED_POLICIES:Ljava/lang/String; = "applied_sdcard_policies"

.field private static final DELAY:I = 0x1f4

.field private static final FIPS_EDK_PATH_SD:Ljava/lang/String; = "edk_p_sd"

#the value of this static final field might be set in the static constructor
.field private static final LOCAL_LOGD:Z = false

#the value of this static final field might be set in the static constructor
.field private static final LOCAL_LOGE:Z = false

.field private static final SECURE_MOUNT_PATH:Ljava/lang/String; = "/mnt/secure/staging"

.field private static final TAG:Ljava/lang/String; = "DirEncryptService"

.field private static mSaveProgressNotification:Landroid/app/Notification;


# instance fields
.field private mAnimateSync:Ljava/lang/Object;

.field private mAnimator:Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;

.field private mConnector:Lcom/android/server/NativeDaemonConnector;

.field private mContext:Landroid/content/Context;

.field mDVFSLock:Landroid/os/PowerManager$DVFSLock;

.field private mDem:Landroid/dirEncryption/DirEncryptionManager;

.field private mDep:Lcom/android/server/DirEncryptPrefs;

.field private mErrAdditionalSpace:I

.field private mFirstUnlockLockscreen:Z

.field private mHandler:Landroid/os/Handler;

.field private mLastError:I

.field private final mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/DirEncryptServiceHelper$DirEncryptServiceBinderListener;",
            ">;"
        }
    .end annotation
.end field

.field private mMountService:Landroid/os/storage/IMountService;

.field public mPassword:Ljava/lang/String;

.field private mRemoteProgressView:Landroid/widget/RemoteViews;

.field private mSelfSDMountRequested:Z

.field private mServiceStatus:I

.field private mStorageEventListener:Lcom/android/server/DirEncryptServiceHelper$SDStorageEventListener;

.field private mStorageManager:Landroid/os/storage/StorageManager;

.field private mSync:Ljava/lang/Object;

.field private mWasEncryptedCard:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 74
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "eng"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/DirEncryptServiceHelper;->LOCAL_LOGE:Z

    .line 75
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "eng"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/DirEncryptServiceHelper;->LOCAL_LOGD:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 285
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 87
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/DirEncryptServiceHelper;->mSync:Ljava/lang/Object;

    .line 89
    iput-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 90
    new-instance v0, Lcom/android/server/DirEncryptServiceHelper$SDStorageEventListener;

    invoke-direct {v0, p0, v1}, Lcom/android/server/DirEncryptServiceHelper$SDStorageEventListener;-><init>(Lcom/android/server/DirEncryptServiceHelper;Lcom/android/server/DirEncryptServiceHelper$1;)V

    iput-object v0, p0, Lcom/android/server/DirEncryptServiceHelper;->mStorageEventListener:Lcom/android/server/DirEncryptServiceHelper$SDStorageEventListener;

    .line 91
    iput-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mDem:Landroid/dirEncryption/DirEncryptionManager;

    .line 92
    iput-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mMountService:Landroid/os/storage/IMountService;

    .line 93
    iput-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mHandler:Landroid/os/Handler;

    .line 94
    iput-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mRemoteProgressView:Landroid/widget/RemoteViews;

    .line 95
    iput-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mDep:Lcom/android/server/DirEncryptPrefs;

    .line 98
    iput-boolean v2, p0, Lcom/android/server/DirEncryptServiceHelper;->mSelfSDMountRequested:Z

    .line 99
    iput-boolean v2, p0, Lcom/android/server/DirEncryptServiceHelper;->mFirstUnlockLockscreen:Z

    .line 100
    iput-boolean v2, p0, Lcom/android/server/DirEncryptServiceHelper;->mWasEncryptedCard:Z

    .line 102
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/DirEncryptServiceHelper;->mPassword:Ljava/lang/String;

    .line 105
    iput v2, p0, Lcom/android/server/DirEncryptServiceHelper;->mErrAdditionalSpace:I

    .line 106
    iput v2, p0, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    .line 107
    iput v2, p0, Lcom/android/server/DirEncryptServiceHelper;->mServiceStatus:I

    .line 109
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/DirEncryptServiceHelper;->mListeners:Ljava/util/ArrayList;

    .line 113
    iput-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mAnimator:Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;

    .line 114
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/DirEncryptServiceHelper;->mAnimateSync:Ljava/lang/Object;

    .line 286
    iput-object p1, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    .line 287
    new-instance v0, Landroid/dirEncryption/DirEncryptionManager;

    iget-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/dirEncryption/DirEncryptionManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/DirEncryptServiceHelper;->mDem:Landroid/dirEncryption/DirEncryptionManager;

    .line 288
    iget-object v0, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/DirEncryptPrefs;->getPreferences(Landroid/content/Context;)Lcom/android/server/DirEncryptPrefs;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/DirEncryptServiceHelper;->mDep:Lcom/android/server/DirEncryptPrefs;

    .line 289
    new-instance v0, Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;

    iget-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;-><init>(Lcom/android/server/DirEncryptServiceHelper;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/DirEncryptServiceHelper;->mAnimator:Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;

    .line 290
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/DirEncryptServiceHelper;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/server/DirEncryptServiceHelper;->mListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/DirEncryptServiceHelper;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/server/DirEncryptServiceHelper;->mAnimateSync:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$300()Landroid/app/Notification;
    .locals 1

    .prologue
    .line 71
    sget-object v0, Lcom/android/server/DirEncryptServiceHelper;->mSaveProgressNotification:Landroid/app/Notification;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/DirEncryptServiceHelper;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/server/DirEncryptServiceHelper;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/DirEncryptServiceHelper;)Landroid/dirEncryption/DirEncryptionManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/server/DirEncryptServiceHelper;->mDem:Landroid/dirEncryption/DirEncryptionManager;

    return-object v0
.end method

.method private clearNotification()V
    .locals 3

    .prologue
    .line 1004
    iget-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 1006
    .local v0, notificationManager:Landroid/app/NotificationManager;
    sget v1, Landroid/dirEncryption/DirEncryptionManager;->SECURITY_POLICY_NOTIFICATION_ID:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 1007
    return-void
.end method

.method private doCheckEncMeta()V
    .locals 2

    .prologue
    .line 974
    iget-object v0, p0, Lcom/android/server/DirEncryptServiceHelper;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mDem:Landroid/dirEncryption/DirEncryptionManager;

    invoke-virtual {v1}, Landroid/dirEncryption/DirEncryptionManager;->getExternalSdPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "checking"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 975
    const-string v0, "dir_crypto encMetaCheck /mnt/secure/staging"

    invoke-direct {p0, v0}, Lcom/android/server/DirEncryptServiceHelper;->sendCommand(Ljava/lang/String;)V

    .line 976
    :cond_0
    return-void
.end method

.method private doEncryption()V
    .locals 13

    .prologue
    const/4 v12, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 903
    iget-object v10, p0, Lcom/android/server/DirEncryptServiceHelper;->mDep:Lcom/android/server/DirEncryptPrefs;

    invoke-virtual {v10}, Lcom/android/server/DirEncryptPrefs;->restorePrefs()Landroid/dirEncryption/SDCardEncryptionPolicies;

    move-result-object v4

    .line 905
    .local v4, reqPolicies:Landroid/dirEncryption/SDCardEncryptionPolicies;
    iget v10, v4, Landroid/dirEncryption/SDCardEncryptionPolicies;->mEnc:I

    if-ne v10, v12, :cond_0

    move v5, v8

    .line 906
    .local v5, requiredEnc:I
    :goto_0
    iget v10, v4, Landroid/dirEncryption/SDCardEncryptionPolicies;->mFullEnc:I

    const/4 v11, 0x4

    if-ne v10, v11, :cond_1

    move v6, v8

    .line 907
    .local v6, requiredFullEnc:I
    :goto_1
    iget v10, v4, Landroid/dirEncryption/SDCardEncryptionPolicies;->mExcludeMedia:I

    const/4 v11, 0x6

    if-ne v10, v11, :cond_2

    move v2, v8

    .line 909
    .local v2, excludeMedia:I
    :goto_2
    iget-object v9, p0, Lcom/android/server/DirEncryptServiceHelper;->mPassword:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v9, v8, :cond_3

    .line 912
    iget-object v9, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    const-string v10, "Assert!!! SD card encryption doesn\'t work in factory mode"

    invoke-static {v9, v10, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    .line 971
    :goto_3
    return-void

    .end local v2           #excludeMedia:I
    .end local v5           #requiredEnc:I
    .end local v6           #requiredFullEnc:I
    :cond_0
    move v5, v9

    .line 905
    goto :goto_0

    .restart local v5       #requiredEnc:I
    :cond_1
    move v6, v9

    .line 906
    goto :goto_1

    .restart local v6       #requiredFullEnc:I
    :cond_2
    move v2, v9

    .line 907
    goto :goto_2

    .line 918
    .restart local v2       #excludeMedia:I
    :cond_3
    const-wide/16 v9, 0xbb8

    :try_start_0
    invoke-static {v9, v10}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 924
    :goto_4
    const-string v9, ""

    invoke-direct {p0, v8, v5, v9}, Lcom/android/server/DirEncryptServiceHelper;->showNotification(IILjava/lang/String;)V

    .line 926
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 927
    .local v0, cmd:Ljava/lang/StringBuilder;
    const-string v9, "dir_crypto "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "encrypt"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/DirEncryptServiceHelper;->mPassword:Ljava/lang/String;

    invoke-virtual {p0, v10}, Lcom/android/server/DirEncryptServiceHelper;->addEscapeChar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/mnt/secure/staging"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 940
    if-ne v5, v8, :cond_4

    .line 941
    invoke-direct {p0, v12}, Lcom/android/server/DirEncryptServiceHelper;->setStatus(I)V

    .line 949
    :goto_5
    iget-object v8, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    const-string v9, "power"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    .line 950
    .local v3, pm:Landroid/os/PowerManager;
    invoke-virtual {v3}, Landroid/os/PowerManager;->getSupportedFrequency()[I

    move-result-object v7

    .line 953
    .local v7, supportedFreq:[I
    if-eqz v7, :cond_5

    :try_start_1
    iget-object v8, p0, Lcom/android/server/DirEncryptServiceHelper;->mDVFSLock:Landroid/os/PowerManager$DVFSLock;

    if-nez v8, :cond_5

    .line 954
    const/4 v8, 0x1

    const/4 v9, 0x0

    aget v9, v7, v9

    const-string v10, "DirEncryptService"

    invoke-virtual {v3, v8, v9, v10}, Landroid/os/PowerManager;->newDVFSLock(IILjava/lang/String;)Landroid/os/PowerManager$DVFSLock;

    move-result-object v8

    iput-object v8, p0, Lcom/android/server/DirEncryptServiceHelper;->mDVFSLock:Landroid/os/PowerManager$DVFSLock;

    .line 955
    const-string v8, "create dvfs lock"

    invoke-static {v8}, Lcom/android/server/DirEncryptServiceHelper;->logD(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 964
    :goto_6
    :try_start_2
    const-string v8, "acquire dvfs lock"

    invoke-static {v8}, Lcom/android/server/DirEncryptServiceHelper;->logD(Ljava/lang/String;)V

    .line 965
    iget-object v8, p0, Lcom/android/server/DirEncryptServiceHelper;->mDVFSLock:Landroid/os/PowerManager$DVFSLock;

    invoke-virtual {v8}, Landroid/os/PowerManager$DVFSLock;->acquire()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 970
    :goto_7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/server/DirEncryptServiceHelper;->sendCommand(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 919
    .end local v0           #cmd:Ljava/lang/StringBuilder;
    .end local v3           #pm:Landroid/os/PowerManager;
    .end local v7           #supportedFreq:[I
    :catch_0
    move-exception v1

    .line 921
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_4

    .line 943
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v0       #cmd:Ljava/lang/StringBuilder;
    :cond_4
    const/4 v8, 0x3

    invoke-direct {p0, v8}, Lcom/android/server/DirEncryptServiceHelper;->setStatus(I)V

    goto :goto_5

    .line 957
    .restart local v3       #pm:Landroid/os/PowerManager;
    .restart local v7       #supportedFreq:[I
    :cond_5
    :try_start_3
    const-string v8, "supportedFreq is null"

    invoke-static {v8}, Lcom/android/server/DirEncryptServiceHelper;->logE(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_6

    .line 959
    :catch_1
    move-exception v1

    .line 960
    .restart local v1       #e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6

    .line 966
    .end local v1           #e:Ljava/lang/Exception;
    :catch_2
    move-exception v1

    .line 967
    .restart local v1       #e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7
.end method

.method private doWorkForPassword(Ljava/lang/String;)V
    .locals 5
    .parameter "password"

    .prologue
    const/4 v4, 0x1

    .line 723
    if-nez p1, :cond_0

    .line 724
    const-string p1, ""

    .line 726
    :cond_0
    const-string v2, ""

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 728
    const-string v2, ""

    iput-object v2, p0, Lcom/android/server/DirEncryptServiceHelper;->mPassword:Ljava/lang/String;

    .line 729
    const-string v2, "dir_crypto password"

    invoke-direct {p0, v2}, Lcom/android/server/DirEncryptServiceHelper;->sendCommand(Ljava/lang/String;)V

    .line 755
    :cond_1
    :goto_0
    return-void

    .line 730
    :cond_2
    iget-object v2, p0, Lcom/android/server/DirEncryptServiceHelper;->mPassword:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v2, v4, :cond_5

    .line 733
    new-instance v0, Ljava/io/File;

    const-string v2, "/data/system/"

    const-string v3, "edk_p_sd"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 734
    .local v0, f:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 735
    iput-object p1, p0, Lcom/android/server/DirEncryptServiceHelper;->mPassword:Ljava/lang/String;

    .line 736
    iget-object v2, p0, Lcom/android/server/DirEncryptServiceHelper;->mDep:Lcom/android/server/DirEncryptPrefs;

    invoke-virtual {v2}, Lcom/android/server/DirEncryptPrefs;->haveEncPrefs()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 737
    iget-object v2, p0, Lcom/android/server/DirEncryptServiceHelper;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v3, p0, Lcom/android/server/DirEncryptServiceHelper;->mDem:Landroid/dirEncryption/DirEncryptionManager;

    invoke-virtual {v3}, Landroid/dirEncryption/DirEncryptionManager;->getExternalSdPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 738
    .local v1, state:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/DirEncryptServiceHelper;->isStorageCardEncryptionPoliciesApplied()I

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "mounted"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 739
    iput-boolean v4, p0, Lcom/android/server/DirEncryptServiceHelper;->mFirstUnlockLockscreen:Z

    .line 740
    invoke-direct {p0}, Lcom/android/server/DirEncryptServiceHelper;->unmountSDCard()V

    goto :goto_0

    .line 742
    :cond_3
    iget-object v2, p0, Lcom/android/server/DirEncryptServiceHelper;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 746
    .end local v1           #state:Ljava/lang/String;
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dir_crypto password "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, p1}, Lcom/android/server/DirEncryptServiceHelper;->addEscapeChar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/DirEncryptServiceHelper;->sendCommand(Ljava/lang/String;)V

    goto :goto_0

    .line 749
    .end local v0           #f:Ljava/io/File;
    :cond_5
    iget-object v2, p0, Lcom/android/server/DirEncryptServiceHelper;->mPassword:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 751
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dir_crypto password "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/DirEncryptServiceHelper;->mPassword:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/android/server/DirEncryptServiceHelper;->addEscapeChar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, p1}, Lcom/android/server/DirEncryptServiceHelper;->addEscapeChar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/DirEncryptServiceHelper;->sendCommand(Ljava/lang/String;)V

    .line 752
    iput-object p1, p0, Lcom/android/server/DirEncryptServiceHelper;->mPassword:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method private doWorkForUSBState(Ljava/lang/String;)V
    .locals 7
    .parameter "state"

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 786
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doWorkForUSBState:: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/DirEncryptServiceHelper;->logD(Ljava/lang/String;)V

    .line 788
    const-string v3, "unmounted"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/android/server/DirEncryptServiceHelper;->mSelfSDMountRequested:Z

    if-eqz v3, :cond_2

    .line 793
    iget-boolean v3, p0, Lcom/android/server/DirEncryptServiceHelper;->mFirstUnlockLockscreen:Z

    if-ne v3, v1, :cond_0

    .line 794
    iput-boolean v2, p0, Lcom/android/server/DirEncryptServiceHelper;->mFirstUnlockLockscreen:Z

    .line 795
    iput-boolean v2, p0, Lcom/android/server/DirEncryptServiceHelper;->mSelfSDMountRequested:Z

    .line 799
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/DirEncryptServiceHelper;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/DirEncryptServiceHelper;->mDem:Landroid/dirEncryption/DirEncryptionManager;

    invoke-virtual {v2}, Landroid/dirEncryption/DirEncryptionManager;->getExternalSdPath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/os/storage/IMountService;->mountVolume(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 900
    :cond_1
    :goto_0
    return-void

    .line 800
    :catch_0
    move-exception v0

    .line 801
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 803
    .end local v0           #e:Ljava/lang/Exception;
    :cond_2
    const-string v3, "checking"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 815
    iget-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mPassword:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3

    iget-boolean v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mSelfSDMountRequested:Z

    if-eqz v1, :cond_3

    .line 816
    iput-boolean v2, p0, Lcom/android/server/DirEncryptServiceHelper;->mSelfSDMountRequested:Z

    .line 818
    iget-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 820
    :cond_3
    iget-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mDep:Lcom/android/server/DirEncryptPrefs;

    invoke-virtual {v1}, Lcom/android/server/DirEncryptPrefs;->haveEncPrefs()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 821
    iget-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 823
    :cond_4
    const-string v1, "encPrefs Not found"

    invoke-static {v1}, Lcom/android/server/DirEncryptServiceHelper;->logD(Ljava/lang/String;)V

    goto :goto_0

    .line 826
    :cond_5
    const-string v3, "mounted"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 835
    invoke-direct {p0}, Lcom/android/server/DirEncryptServiceHelper;->getStorageCardEncryptionInternal()I

    move-result v3

    if-ne v3, v5, :cond_8

    .line 837
    iget-boolean v3, p0, Lcom/android/server/DirEncryptServiceHelper;->mWasEncryptedCard:Z

    if-eqz v3, :cond_6

    .line 838
    const-string v1, "looks like encryption policies were received while SD card decryption was on going!!"

    invoke-static {v1}, Lcom/android/server/DirEncryptServiceHelper;->logD(Ljava/lang/String;)V

    .line 839
    const-string v1, "success"

    invoke-direct {p0, v5, v2, v1}, Lcom/android/server/DirEncryptServiceHelper;->showNotification(IILjava/lang/String;)V

    .line 840
    iput-boolean v2, p0, Lcom/android/server/DirEncryptServiceHelper;->mWasEncryptedCard:Z

    .line 841
    invoke-direct {p0, v2}, Lcom/android/server/DirEncryptServiceHelper;->setStatus(I)V

    .line 842
    const-string v1, "free"

    invoke-direct {p0, v6, v1}, Lcom/android/server/DirEncryptServiceHelper;->notifyEncryptionStatusChanged(ILjava/lang/String;)V

    .line 848
    :goto_1
    const-string v1, "free"

    invoke-direct {p0, v2, v1}, Lcom/android/server/DirEncryptServiceHelper;->notifyEncryptionStatusChanged(ILjava/lang/String;)V

    goto :goto_0

    .line 844
    :cond_6
    const-string v3, "Since encrypt is ON: final mount command"

    invoke-static {v3}, Lcom/android/server/DirEncryptServiceHelper;->logD(Ljava/lang/String;)V

    .line 845
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dir_crypto mount "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/DirEncryptServiceHelper;->mDem:Landroid/dirEncryption/DirEncryptionManager;

    invoke-virtual {v4}, Landroid/dirEncryption/DirEncryptionManager;->getExternalSdPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/DirEncryptServiceHelper;->mPassword:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/android/server/DirEncryptServiceHelper;->addEscapeChar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lcom/android/server/DirEncryptServiceHelper;->getStorageCardMediaExclusionInternal()I

    move-result v4

    const/4 v5, 0x6

    if-ne v4, v5, :cond_7

    :goto_2
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/DirEncryptServiceHelper;->sendCommand(Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    move v1, v2

    goto :goto_2

    .line 850
    :cond_8
    const-string v1, "Since encrypt is OFF: no final mount command"

    invoke-static {v1}, Lcom/android/server/DirEncryptServiceHelper;->logD(Ljava/lang/String;)V

    .line 851
    invoke-static {}, Lcom/android/server/DirEncryptServiceHelper$AppliedPolicies;->setPoliciesApplied()Z

    .line 853
    invoke-direct {p0, v2}, Lcom/android/server/DirEncryptServiceHelper;->setStatus(I)V

    .line 854
    const-string v1, "free"

    invoke-direct {p0, v6, v1}, Lcom/android/server/DirEncryptServiceHelper;->notifyEncryptionStatusChanged(ILjava/lang/String;)V

    .line 856
    iget-boolean v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mWasEncryptedCard:Z

    if-eqz v1, :cond_1

    .line 857
    const-string v1, "success"

    invoke-direct {p0, v5, v2, v1}, Lcom/android/server/DirEncryptServiceHelper;->showNotification(IILjava/lang/String;)V

    .line 858
    iput-boolean v2, p0, Lcom/android/server/DirEncryptServiceHelper;->mWasEncryptedCard:Z

    goto/16 :goto_0

    .line 862
    :cond_9
    const-string v1, "removed"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 867
    iput-boolean v2, p0, Lcom/android/server/DirEncryptServiceHelper;->mSelfSDMountRequested:Z

    .line 868
    iput v2, p0, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    .line 869
    invoke-static {}, Lcom/android/server/DirEncryptServiceHelper$AppliedPolicies;->setPoliciesRemoved()Z

    .line 871
    const-string v1, "SD card removed"

    invoke-static {v1}, Lcom/android/server/DirEncryptServiceHelper;->logD(Ljava/lang/String;)V

    .line 872
    const-string v1, "clearNotification"

    invoke-static {v1}, Lcom/android/server/DirEncryptServiceHelper;->logD(Ljava/lang/String;)V

    .line 873
    invoke-direct {p0}, Lcom/android/server/DirEncryptServiceHelper;->clearNotification()V

    .line 875
    new-instance v1, Landroid/dirEncryption/DirEncryptionManager;

    iget-object v3, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Landroid/dirEncryption/DirEncryptionManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mDem:Landroid/dirEncryption/DirEncryptionManager;

    .line 876
    invoke-direct {p0, v2}, Lcom/android/server/DirEncryptServiceHelper;->setStatus(I)V

    .line 877
    const-string v1, "free"

    invoke-direct {p0, v2, v1}, Lcom/android/server/DirEncryptServiceHelper;->notifyEncryptionStatusChanged(ILjava/lang/String;)V

    .line 880
    :try_start_1
    const-string v1, "SD card removed, removing the hidden drive if any"

    invoke-static {v1}, Lcom/android/server/DirEncryptServiceHelper;->logD(Ljava/lang/String;)V

    .line 881
    invoke-direct {p0}, Lcom/android/server/DirEncryptServiceHelper;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/server/DirEncryptServiceHelper;->mDem:Landroid/dirEncryption/DirEncryptionManager;

    invoke-virtual {v3}, Landroid/dirEncryption/DirEncryptionManager;->getExternalSdPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " hidden"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Landroid/os/storage/IMountService;->unmountVolume(Ljava/lang/String;ZZ)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 882
    :catch_1
    move-exception v0

    .line 883
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 885
    .end local v0           #e:Ljava/lang/Exception;
    :cond_a
    const-string v1, "unmounted"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 886
    invoke-static {}, Lcom/android/server/DirEncryptServiceHelper$AppliedPolicies;->setPoliciesRemoved()Z

    .line 887
    const-string v1, "SD card unmounted"

    invoke-static {v1}, Lcom/android/server/DirEncryptServiceHelper;->logD(Ljava/lang/String;)V

    .line 888
    iget v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    if-nez v1, :cond_1

    .line 889
    const-string v1, "clearNotification"

    invoke-static {v1}, Lcom/android/server/DirEncryptServiceHelper;->logD(Ljava/lang/String;)V

    .line 890
    invoke-direct {p0}, Lcom/android/server/DirEncryptServiceHelper;->clearNotification()V

    goto/16 :goto_0

    .line 892
    :cond_b
    const-string v1, "bad_removal"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 893
    const-string v1, "SD card bad removed"

    invoke-static {v1}, Lcom/android/server/DirEncryptServiceHelper;->logD(Ljava/lang/String;)V

    .line 894
    iget v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    if-nez v1, :cond_1

    .line 895
    const-string v1, "clearNotification"

    invoke-static {v1}, Lcom/android/server/DirEncryptServiceHelper;->logD(Ljava/lang/String;)V

    .line 896
    invoke-direct {p0}, Lcom/android/server/DirEncryptServiceHelper;->clearNotification()V

    .line 897
    const-string v1, "free"

    invoke-direct {p0, v2, v1}, Lcom/android/server/DirEncryptServiceHelper;->notifyEncryptionStatusChanged(ILjava/lang/String;)V

    goto/16 :goto_0
.end method

.method private getFullStorageCardEncryptionInternal()I
    .locals 2

    .prologue
    .line 676
    iget-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mDep:Lcom/android/server/DirEncryptPrefs;

    invoke-virtual {v1}, Lcom/android/server/DirEncryptPrefs;->restorePrefs()Landroid/dirEncryption/SDCardEncryptionPolicies;

    move-result-object v0

    .line 677
    .local v0, policies:Landroid/dirEncryption/SDCardEncryptionPolicies;
    iget v1, v0, Landroid/dirEncryption/SDCardEncryptionPolicies;->mFullEnc:I

    return v1
.end method

.method private getMountService()Landroid/os/storage/IMountService;
    .locals 2

    .prologue
    .line 686
    iget-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mMountService:Landroid/os/storage/IMountService;

    if-nez v1, :cond_0

    .line 687
    const-string v1, "mount"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 688
    .local v0, service:Landroid/os/IBinder;
    if-eqz v0, :cond_1

    .line 689
    invoke-static {v0}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mMountService:Landroid/os/storage/IMountService;

    .line 694
    .end local v0           #service:Landroid/os/IBinder;
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mMountService:Landroid/os/storage/IMountService;

    return-object v1

    .line 691
    .restart local v0       #service:Landroid/os/IBinder;
    :cond_1
    const-string v1, "Can\'t get mount service"

    invoke-static {v1}, Lcom/android/server/DirEncryptServiceHelper;->logD(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getRemoteProgressView(Ljava/lang/String;II)Landroid/widget/RemoteViews;
    .locals 5
    .parameter "text"
    .parameter "reqEnc"
    .parameter "progress"

    .prologue
    const v4, 0x1020409

    .line 979
    const-string v0, ""

    .line 980
    .local v0, progressText:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mRemoteProgressView:Landroid/widget/RemoteViews;

    if-nez v1, :cond_0

    .line 981
    new-instance v1, Landroid/widget/RemoteViews;

    iget-object v2, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x10900ca

    invoke-direct {v1, v2, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mRemoteProgressView:Landroid/widget/RemoteViews;

    .line 984
    :cond_0
    const/4 v1, 0x1

    if-ne p2, v1, :cond_1

    .line 985
    iget-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mRemoteProgressView:Landroid/widget/RemoteViews;

    const v2, 0x108027f

    invoke-virtual {v1, v4, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 986
    iget-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1040678

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 991
    :goto_0
    iget-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mRemoteProgressView:Landroid/widget/RemoteViews;

    const v2, 0x102040a

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 992
    iget-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mRemoteProgressView:Landroid/widget/RemoteViews;

    const v2, 0x102040b

    const/16 v3, 0x64

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, p3, v4}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    .line 994
    iget-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mRemoteProgressView:Landroid/widget/RemoteViews;

    return-object v1

    .line 988
    :cond_1
    iget-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mRemoteProgressView:Landroid/widget/RemoteViews;

    const v2, 0x1080227

    invoke-virtual {v1, v4, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 989
    iget-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x104067c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getSecurityIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 998
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.app.action.START_SDCARD_ENCRYPTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 999
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "adminStart"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1000
    return-object v0
.end method

.method private getStorageCardEncryptionInternal()I
    .locals 2

    .prologue
    .line 671
    iget-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mDep:Lcom/android/server/DirEncryptPrefs;

    invoke-virtual {v1}, Lcom/android/server/DirEncryptPrefs;->restorePrefs()Landroid/dirEncryption/SDCardEncryptionPolicies;

    move-result-object v0

    .line 672
    .local v0, policies:Landroid/dirEncryption/SDCardEncryptionPolicies;
    iget v1, v0, Landroid/dirEncryption/SDCardEncryptionPolicies;->mEnc:I

    return v1
.end method

.method private getStorageCardMediaExclusionInternal()I
    .locals 2

    .prologue
    .line 681
    iget-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mDep:Lcom/android/server/DirEncryptPrefs;

    invoke-virtual {v1}, Lcom/android/server/DirEncryptPrefs;->restorePrefs()Landroid/dirEncryption/SDCardEncryptionPolicies;

    move-result-object v0

    .line 682
    .local v0, policies:Landroid/dirEncryption/SDCardEncryptionPolicies;
    iget v1, v0, Landroid/dirEncryption/SDCardEncryptionPolicies;->mExcludeMedia:I

    return v1
.end method

.method public static logD(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 662
    sget-boolean v0, Lcom/android/server/DirEncryptServiceHelper;->LOCAL_LOGD:Z

    if-eqz v0, :cond_0

    const-string v0, "DirEncryptService"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    :cond_0
    return-void
.end method

.method public static logE(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 665
    sget-boolean v0, Lcom/android/server/DirEncryptServiceHelper;->LOCAL_LOGE:Z

    if-eqz v0, :cond_0

    const-string v0, "DirEncryptService"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    :cond_0
    return-void
.end method

.method private notifyEncryptionStatusChanged(ILjava/lang/String;)V
    .locals 7
    .parameter "operation"
    .parameter "status"

    .prologue
    .line 706
    iget-object v5, p0, Lcom/android/server/DirEncryptServiceHelper;->mListeners:Ljava/util/ArrayList;

    monitor-enter v5

    .line 707
    :try_start_0
    iget-object v4, p0, Lcom/android/server/DirEncryptServiceHelper;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    .local v2, i:I
    :goto_0
    if-ltz v2, :cond_0

    .line 708
    iget-object v4, p0, Lcom/android/server/DirEncryptServiceHelper;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/DirEncryptServiceHelper$DirEncryptServiceBinderListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 710
    .local v0, bl:Lcom/android/server/DirEncryptServiceHelper$DirEncryptServiceBinderListener;
    :try_start_1
    iget-object v4, v0, Lcom/android/server/DirEncryptServiceHelper$DirEncryptServiceBinderListener;->mListener:Landroid/os/storage/IDirEncryptServiceListener;

    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mDem:Landroid/dirEncryption/DirEncryptionManager;

    invoke-virtual {v6}, Landroid/dirEncryption/DirEncryptionManager;->getExternalSdPath()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6, p1, p2}, Landroid/os/storage/IDirEncryptServiceListener;->onEncryptionStatusChanged(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 707
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 711
    :catch_0
    move-exception v3

    .line 712
    .local v3, rex:Landroid/os/RemoteException;
    :try_start_2
    const-string v4, "Listener dead"

    invoke-static {v4}, Lcom/android/server/DirEncryptServiceHelper;->logD(Ljava/lang/String;)V

    .line 713
    iget-object v4, p0, Lcom/android/server/DirEncryptServiceHelper;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 718
    .end local v0           #bl:Lcom/android/server/DirEncryptServiceHelper$DirEncryptServiceBinderListener;
    .end local v2           #i:I
    .end local v3           #rex:Landroid/os/RemoteException;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 714
    .restart local v0       #bl:Lcom/android/server/DirEncryptServiceHelper$DirEncryptServiceBinderListener;
    .restart local v2       #i:I
    :catch_1
    move-exception v1

    .line 715
    .local v1, ex:Ljava/lang/Exception;
    :try_start_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Listener failed: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/DirEncryptServiceHelper;->logD(Ljava/lang/String;)V

    goto :goto_1

    .line 718
    .end local v0           #bl:Lcom/android/server/DirEncryptServiceHelper$DirEncryptServiceBinderListener;
    .end local v1           #ex:Ljava/lang/Exception;
    :cond_0
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 719
    return-void
.end method

.method private sendCommand(Ljava/lang/String;)V
    .locals 2
    .parameter "command"

    .prologue
    .line 699
    iget-object v0, p0, Lcom/android/server/DirEncryptServiceHelper;->mConnector:Lcom/android/server/NativeDaemonConnector;

    if-eqz v0, :cond_0

    .line 700
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Sending command: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/DirEncryptServiceHelper;->logD(Ljava/lang/String;)V

    .line 701
    iget-object v0, p0, Lcom/android/server/DirEncryptServiceHelper;->mConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v0, p1}, Lcom/android/server/NativeDaemonConnector;->doCommand(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 703
    :cond_0
    return-void
.end method

.method private setStatus(I)V
    .locals 2
    .parameter "status"

    .prologue
    .line 305
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setStatus:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/DirEncryptServiceHelper;->logD(Ljava/lang/String;)V

    .line 306
    iput p1, p0, Lcom/android/server/DirEncryptServiceHelper;->mServiceStatus:I

    .line 307
    return-void
.end method

.method private showNotification(IILjava/lang/String;)V
    .locals 12
    .parameter "type"
    .parameter "encType"
    .parameter "status"

    .prologue
    .line 1011
    const/4 v1, 0x0

    .line 1012
    .local v1, notification:Landroid/app/Notification;
    const/4 v3, 0x0

    .line 1013
    .local v3, pending:Landroid/app/PendingIntent;
    const-string v5, ""

    .line 1014
    .local v5, tickerText:Ljava/lang/String;
    const-string v0, ""

    .line 1016
    .local v0, contentText:Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 1157
    :goto_0
    const/4 v6, 0x4

    if-eq p1, v6, :cond_0

    .line 1159
    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mAnimator:Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;

    invoke-virtual {v6}, Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;->isInProgress()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1160
    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mAnimator:Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;

    invoke-virtual {v6}, Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;->stop()V

    .line 1163
    :cond_0
    if-eqz v1, :cond_1

    .line 1164
    iget v6, v1, Landroid/app/Notification;->flags:I

    or-int/lit8 v6, v6, 0x1

    iput v6, v1, Landroid/app/Notification;->flags:I

    .line 1165
    iget v6, v1, Landroid/app/Notification;->flags:I

    or-int/lit8 v6, v6, 0x20

    iput v6, v1, Landroid/app/Notification;->flags:I

    .line 1166
    iget v6, v1, Landroid/app/Notification;->flags:I

    or-int/lit8 v6, v6, 0x10

    iput v6, v1, Landroid/app/Notification;->flags:I

    .line 1167
    iget v6, v1, Landroid/app/Notification;->defaults:I

    or-int/lit8 v6, v6, 0x4

    iput v6, v1, Landroid/app/Notification;->defaults:I

    .line 1168
    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    const-string v7, "notification"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 1170
    .local v2, notificationManager:Landroid/app/NotificationManager;
    sget v6, Landroid/dirEncryption/DirEncryptionManager;->SECURITY_POLICY_NOTIFICATION_ID:I

    invoke-virtual {v2, v6, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1172
    .end local v2           #notificationManager:Landroid/app/NotificationManager;
    :cond_1
    return-void

    .line 1019
    :pswitch_0
    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x1040676

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1020
    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x1040677

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1022
    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    const/4 v7, 0x0

    invoke-direct {p0}, Lcom/android/server/DirEncryptServiceHelper;->getSecurityIntent()Landroid/content/Intent;

    move-result-object v8

    const/high16 v9, 0x800

    invoke-static {v6, v7, v8, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 1023
    new-instance v1, Landroid/app/Notification;

    .end local v1           #notification:Landroid/app/Notification;
    const v6, 0x108027f

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-direct {v1, v6, v5, v7, v8}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 1025
    .restart local v1       #notification:Landroid/app/Notification;
    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v6, v5, v0, v3}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    goto :goto_0

    .line 1030
    :pswitch_1
    const/4 v6, 0x1

    if-ne p2, v6, :cond_3

    .line 1032
    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x1040678

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1033
    const-string v6, "success"

    invoke-virtual {v6, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1034
    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x104067a

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1035
    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    const/4 v7, 0x0

    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    const/high16 v9, 0x800

    invoke-static {v6, v7, v8, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 1036
    const/4 v6, 0x0

    iput v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    .line 1037
    new-instance v1, Landroid/app/Notification;

    .end local v1           #notification:Landroid/app/Notification;
    const v6, 0x108027f

    const-string v7, ""

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-direct {v1, v6, v7, v8, v9}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 1062
    .restart local v1       #notification:Landroid/app/Notification;
    :goto_1
    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v6, v5, v0, v3}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    goto/16 :goto_0

    .line 1040
    :cond_2
    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    const/4 v7, 0x0

    new-instance v8, Landroid/content/Intent;

    const-string v9, "android.app.action.START_SDCARD_ENCRYPTION"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v9, 0x800

    invoke-static {v6, v7, v8, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 1041
    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x104067b

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1042
    const/4 v6, 0x5

    iput v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    .line 1043
    new-instance v1, Landroid/app/Notification;

    .end local v1           #notification:Landroid/app/Notification;
    const v6, 0x108027e

    const-string v7, ""

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-direct {v1, v6, v7, v8, v9}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .restart local v1       #notification:Landroid/app/Notification;
    goto :goto_1

    .line 1047
    :cond_3
    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x104067c

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1048
    const-string v6, "success"

    invoke-virtual {v6, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1049
    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x104067e

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1050
    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    const/4 v7, 0x0

    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    const/high16 v9, 0x800

    invoke-static {v6, v7, v8, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 1051
    const/4 v6, 0x0

    iput v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    .line 1052
    new-instance v1, Landroid/app/Notification;

    .end local v1           #notification:Landroid/app/Notification;
    const v6, 0x1080227

    const-string v7, ""

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-direct {v1, v6, v7, v8, v9}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .restart local v1       #notification:Landroid/app/Notification;
    goto :goto_1

    .line 1055
    :cond_4
    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    const/4 v7, 0x0

    new-instance v8, Landroid/content/Intent;

    const-string v9, "android.app.action.START_SDCARD_ENCRYPTION"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v9, 0x800

    invoke-static {v6, v7, v8, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 1056
    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x104067f

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1057
    const/4 v6, 0x6

    iput v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    .line 1058
    new-instance v1, Landroid/app/Notification;

    .end local v1           #notification:Landroid/app/Notification;
    const v6, 0x1080226

    const-string v7, ""

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-direct {v1, v6, v7, v8, v9}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .restart local v1       #notification:Landroid/app/Notification;
    goto/16 :goto_1

    .line 1066
    :pswitch_2
    const/4 v6, 0x1

    if-ne p2, v6, :cond_5

    .line 1067
    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x1040678

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1068
    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x1040679

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1069
    new-instance v1, Landroid/app/Notification;

    .end local v1           #notification:Landroid/app/Notification;
    const v6, 0x108027f

    const-string v7, ""

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-direct {v1, v6, v7, v8, v9}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 1079
    .restart local v1       #notification:Landroid/app/Notification;
    :goto_2
    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    const/4 v7, 0x0

    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    const/high16 v9, 0x800

    invoke-static {v6, v7, v8, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 1080
    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v6, v5, v0, v3}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    goto/16 :goto_0

    .line 1073
    :cond_5
    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x104067c

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1074
    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x104067d

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1075
    new-instance v1, Landroid/app/Notification;

    .end local v1           #notification:Landroid/app/Notification;
    const v6, 0x1080227

    const-string v7, ""

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-direct {v1, v6, v7, v8, v9}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .restart local v1       #notification:Landroid/app/Notification;
    goto :goto_2

    .line 1084
    :pswitch_3
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 1085
    .local v4, progress:I
    iget-object v7, p0, Lcom/android/server/DirEncryptServiceHelper;->mAnimateSync:Ljava/lang/Object;

    monitor-enter v7

    .line 1086
    const/4 v6, 0x1

    if-ne p2, v6, :cond_7

    .line 1087
    :try_start_0
    new-instance v6, Landroid/app/Notification;

    const v8, 0x108027d

    const-string v9, ""

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-direct {v6, v8, v9, v10, v11}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    sput-object v6, Lcom/android/server/DirEncryptServiceHelper;->mSaveProgressNotification:Landroid/app/Notification;

    .line 1090
    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v8, 0x1040679

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1097
    :goto_3
    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    const/4 v8, 0x0

    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    const/high16 v10, 0x800

    invoke-static {v6, v8, v9, v10}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 1099
    sget-object v6, Lcom/android/server/DirEncryptServiceHelper;->mSaveProgressNotification:Landroid/app/Notification;

    iget-object v8, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v8, v0, v0, v3}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 1100
    sget-object v6, Lcom/android/server/DirEncryptServiceHelper;->mSaveProgressNotification:Landroid/app/Notification;

    invoke-direct {p0, v0, p2, v4}, Lcom/android/server/DirEncryptServiceHelper;->getRemoteProgressView(Ljava/lang/String;II)Landroid/widget/RemoteViews;

    move-result-object v8

    iput-object v8, v6, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 1101
    sget-object v6, Lcom/android/server/DirEncryptServiceHelper;->mSaveProgressNotification:Landroid/app/Notification;

    iget v8, v6, Landroid/app/Notification;->flags:I

    or-int/lit8 v8, v8, 0x2

    iput v8, v6, Landroid/app/Notification;->flags:I

    .line 1102
    if-nez v4, :cond_8

    .line 1105
    sget-object v6, Lcom/android/server/DirEncryptServiceHelper;->mSaveProgressNotification:Landroid/app/Notification;

    const/4 v8, 0x0

    iput v8, v6, Landroid/app/Notification;->iconLevel:I

    .line 1108
    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mAnimator:Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;

    invoke-virtual {v6}, Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;->start()V

    .line 1109
    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mHandler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/android/server/DirEncryptServiceHelper;->mAnimator:Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;

    invoke-virtual {v6, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1117
    :cond_6
    :goto_4
    monitor-exit v7

    goto/16 :goto_0

    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 1092
    :cond_7
    :try_start_1
    new-instance v6, Landroid/app/Notification;

    const v8, 0x1080225

    const-string v9, ""

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-direct {v6, v8, v9, v10, v11}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    sput-object v6, Lcom/android/server/DirEncryptServiceHelper;->mSaveProgressNotification:Landroid/app/Notification;

    .line 1095
    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v8, 0x104067d

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 1112
    :cond_8
    const/16 v6, 0x64

    if-ne v6, v4, :cond_6

    .line 1115
    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mAnimator:Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;

    invoke-virtual {v6}, Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;->stop()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    .line 1122
    .end local v4           #progress:I
    :pswitch_4
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mErrAdditionalSpace:I

    .line 1123
    const/4 v6, 0x1

    if-ne p2, v6, :cond_9

    .line 1124
    new-instance v1, Landroid/app/Notification;

    .end local v1           #notification:Landroid/app/Notification;
    const v6, 0x108027e

    const-string v7, ""

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-direct {v1, v6, v7, v8, v9}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 1125
    .restart local v1       #notification:Landroid/app/Notification;
    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x1040678

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1126
    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    const/4 v7, 0x0

    new-instance v8, Landroid/content/Intent;

    const-string v9, "android.app.action.START_SDCARD_ENCRYPTION"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v9, 0x800

    invoke-static {v6, v7, v8, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 1127
    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x104067b

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1134
    :goto_5
    const/4 v6, 0x4

    iput v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    .line 1135
    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v6, v5, v0, v3}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    goto/16 :goto_0

    .line 1129
    :cond_9
    new-instance v1, Landroid/app/Notification;

    .end local v1           #notification:Landroid/app/Notification;
    const v6, 0x1080226

    const-string v7, ""

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-direct {v1, v6, v7, v8, v9}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 1130
    .restart local v1       #notification:Landroid/app/Notification;
    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x104067c

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1131
    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    const/4 v7, 0x0

    new-instance v8, Landroid/content/Intent;

    const-string v9, "android.app.action.START_SDCARD_ENCRYPTION"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v9, 0x800

    invoke-static {v6, v7, v8, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 1132
    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x104067f

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    .line 1139
    :pswitch_5
    const/4 v6, 0x1

    if-ne p2, v6, :cond_a

    .line 1140
    new-instance v1, Landroid/app/Notification;

    .end local v1           #notification:Landroid/app/Notification;
    const v6, 0x108027e

    const-string v7, ""

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-direct {v1, v6, v7, v8, v9}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 1142
    .restart local v1       #notification:Landroid/app/Notification;
    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x1040678

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1143
    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    const/4 v7, 0x0

    new-instance v8, Landroid/content/Intent;

    const-string v9, "android.app.action.START_SDCARD_ENCRYPTION"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v9, 0x800

    invoke-static {v6, v7, v8, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 1144
    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x104067b

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1151
    :goto_6
    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v6, v5, v0, v3}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    goto/16 :goto_0

    .line 1146
    :cond_a
    new-instance v1, Landroid/app/Notification;

    .end local v1           #notification:Landroid/app/Notification;
    const v6, 0x108027e

    const-string v7, ""

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-direct {v1, v6, v7, v8, v9}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 1147
    .restart local v1       #notification:Landroid/app/Notification;
    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x104067c

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1148
    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    const/4 v7, 0x0

    new-instance v8, Landroid/content/Intent;

    const-string v9, "android.app.action.START_SDCARD_ENCRYPTION"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v9, 0x800

    invoke-static {v6, v7, v8, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 1149
    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x104067f

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    .line 1016
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_5
        :pswitch_3
        :pswitch_4
        :pswitch_0
    .end packed-switch
.end method

.method private unmountSDCard()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 758
    iput-boolean v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mSelfSDMountRequested:Z

    .line 761
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/DirEncryptServiceHelper;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/DirEncryptServiceHelper;->mDem:Landroid/dirEncryption/DirEncryptionManager;

    invoke-virtual {v2}, Landroid/dirEncryption/DirEncryptionManager;->getExternalSdPath()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Landroid/os/storage/IMountService;->unmountVolume(Ljava/lang/String;ZZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 765
    :goto_0
    return-void

    .line 762
    :catch_0
    move-exception v0

    .line 763
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public addEscapeChar(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "in"

    .prologue
    .line 774
    if-nez p1, :cond_0

    .line 775
    const-string v0, ""

    .line 778
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "\\\\"

    const-string v1, "\\\\\\\\"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\""

    const-string v2, "\\\\\""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public doHandleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 349
    iget-object v2, p0, Lcom/android/server/DirEncryptServiceHelper;->mSync:Ljava/lang/Object;

    monitor-enter v2

    .line 350
    const/4 v1, 0x0

    :try_start_0
    iput v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    .line 352
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 380
    const-string v1, "Invalid command!!!"

    invoke-static {v1}, Lcom/android/server/DirEncryptServiceHelper;->logE(Ljava/lang/String;)V

    .line 382
    :goto_0
    monitor-exit v2

    .line 383
    return-void

    .line 354
    :pswitch_0
    iget-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mStorageManager:Landroid/os/storage/StorageManager;

    if-nez v1, :cond_0

    .line 355
    iget-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    const-string v3, "storage"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageManager;

    iput-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 356
    iget-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v3, p0, Lcom/android/server/DirEncryptServiceHelper;->mStorageEventListener:Lcom/android/server/DirEncryptServiceHelper$SDStorageEventListener;

    invoke-virtual {v1, v3}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    .line 358
    :cond_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/server/DirEncryptServiceHelper;->doWorkForPassword(Ljava/lang/String;)V

    goto :goto_0

    .line 382
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 362
    :pswitch_1
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/DirEncryptServiceHelper;->unmountSDCard()V

    goto :goto_0

    .line 366
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 367
    .local v0, state:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Command.USB_STATE:: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/DirEncryptServiceHelper;->logD(Ljava/lang/String;)V

    .line 368
    invoke-direct {p0, v0}, Lcom/android/server/DirEncryptServiceHelper;->doWorkForUSBState(Ljava/lang/String;)V

    goto :goto_0

    .line 372
    .end local v0           #state:Ljava/lang/String;
    :pswitch_3
    invoke-direct {p0}, Lcom/android/server/DirEncryptServiceHelper;->doEncryption()V

    goto :goto_0

    .line 376
    :pswitch_4
    invoke-direct {p0}, Lcom/android/server/DirEncryptServiceHelper;->doCheckEncMeta()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 352
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public getAdditionalSpaceRequired()I
    .locals 1

    .prologue
    .line 301
    iget v0, p0, Lcom/android/server/DirEncryptServiceHelper;->mErrAdditionalSpace:I

    return v0
.end method

.method public getCurrentStatus()I
    .locals 1

    .prologue
    .line 293
    iget v0, p0, Lcom/android/server/DirEncryptServiceHelper;->mServiceStatus:I

    return v0
.end method

.method public getLastError()I
    .locals 1

    .prologue
    .line 297
    iget v0, p0, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    return v0
.end method

.method public isStorageCardEncryptionPoliciesApplied()I
    .locals 1

    .prologue
    .line 322
    invoke-static {}, Lcom/android/server/DirEncryptServiceHelper$AppliedPolicies;->checkPoliciesApplied()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onEventInner(ILjava/lang/String;[Ljava/lang/String;)Z
    .locals 25
    .parameter "code"
    .parameter "raw"
    .parameter "cooked"

    .prologue
    .line 388
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DirEncryptServiceHelper;->mSync:Ljava/lang/Object;

    move-object/from16 v22, v0

    monitor-enter v22

    .line 389
    :try_start_0
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "onEventInner:: "

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/android/server/DirEncryptServiceHelper;->logD(Ljava/lang/String;)V

    .line 391
    packed-switch p1, :pswitch_data_0

    .line 656
    :goto_0
    :pswitch_0
    monitor-exit v22

    .line 657
    const/16 v21, 0x1

    return v21

    .line 394
    :pswitch_1
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v21, v0

    const/16 v23, 0x3

    move/from16 v0, v21

    move/from16 v1, v23

    if-ne v0, v1, :cond_1

    .line 395
    const/16 v21, 0x1

    aget-object v14, p3, v21

    .line 396
    .local v14, password:Ljava/lang/String;
    const/16 v21, 0x2

    aget-object v21, p3, v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    .line 398
    .local v19, status:I
    const/16 v21, 0x1

    move/from16 v0, v19

    move/from16 v1, v21

    if-ne v0, v1, :cond_0

    .line 399
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    .line 400
    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/server/DirEncryptServiceHelper;->mPassword:Ljava/lang/String;

    .line 410
    .end local v14           #password:Ljava/lang/String;
    .end local v19           #status:I
    :goto_1
    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/server/DirEncryptServiceHelper;->setStatus(I)V

    goto :goto_0

    .line 656
    :catchall_0
    move-exception v21

    monitor-exit v22
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v21

    .line 403
    .restart local v14       #password:Ljava/lang/String;
    .restart local v19       #status:I
    :cond_0
    :try_start_1
    const-string v21, "unable to save DEK"

    invoke-static/range {v21 .. v21}, Lcom/android/server/DirEncryptServiceHelper;->logD(Ljava/lang/String;)V

    .line 404
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    goto :goto_1

    .line 408
    .end local v14           #password:Ljava/lang/String;
    .end local v19           #status:I
    :cond_1
    const-string v21, "RESP_PWD extra data recvd, please fix!!"

    invoke-static/range {v21 .. v21}, Lcom/android/server/DirEncryptServiceHelper;->logD(Ljava/lang/String;)V

    goto :goto_1

    .line 415
    :pswitch_2
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v21, v0

    const/16 v23, 0x2

    move/from16 v0, v21

    move/from16 v1, v23

    if-ne v0, v1, :cond_3

    .line 416
    const/16 v21, 0x1

    aget-object v21, p3, v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    .line 418
    .restart local v19       #status:I
    const/16 v21, 0x1

    move/from16 v0, v19

    move/from16 v1, v21

    if-eq v0, v1, :cond_2

    .line 420
    const-string v21, "Unable to update DEK"

    invoke-static/range {v21 .. v21}, Lcom/android/server/DirEncryptServiceHelper;->logD(Ljava/lang/String;)V

    .line 421
    const/16 v21, 0x2

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    .line 430
    .end local v19           #status:I
    :goto_2
    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/server/DirEncryptServiceHelper;->setStatus(I)V

    goto/16 :goto_0

    .line 423
    .restart local v19       #status:I
    :cond_2
    const-string v21, "DEK successfully updated"

    invoke-static/range {v21 .. v21}, Lcom/android/server/DirEncryptServiceHelper;->logD(Ljava/lang/String;)V

    .line 424
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    goto :goto_2

    .line 427
    .end local v19           #status:I
    :cond_3
    const-string v21, "RESP_PWD extra data recvd, please fix!!"

    invoke-static/range {v21 .. v21}, Lcom/android/server/DirEncryptServiceHelper;->logD(Ljava/lang/String;)V

    goto :goto_2

    .line 434
    :pswitch_3
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v21, v0

    const/16 v23, 0x2

    move/from16 v0, v21

    move/from16 v1, v23

    if-ne v0, v1, :cond_5

    .line 435
    const/16 v21, 0x1

    aget-object v21, p3, v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    .line 437
    .restart local v19       #status:I
    const/16 v21, 0x1

    move/from16 v0, v19

    move/from16 v1, v21

    if-eq v0, v1, :cond_4

    .line 439
    const-string v21, "Unable to delete DEK"

    invoke-static/range {v21 .. v21}, Lcom/android/server/DirEncryptServiceHelper;->logD(Ljava/lang/String;)V

    .line 440
    const/16 v21, 0x3

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    .line 449
    .end local v19           #status:I
    :goto_3
    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/server/DirEncryptServiceHelper;->setStatus(I)V

    goto/16 :goto_0

    .line 442
    .restart local v19       #status:I
    :cond_4
    const-string v21, "DEK successfully deleted"

    invoke-static/range {v21 .. v21}, Lcom/android/server/DirEncryptServiceHelper;->logD(Ljava/lang/String;)V

    .line 443
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DirEncryptServiceHelper;->mDep:Lcom/android/server/DirEncryptPrefs;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/DirEncryptPrefs;->clearPrefs()V

    .line 444
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    goto :goto_3

    .line 447
    .end local v19           #status:I
    :cond_5
    const-string v21, "RESP_PWD extra data recvd, please fix!!"

    invoke-static/range {v21 .. v21}, Lcom/android/server/DirEncryptServiceHelper;->logD(Ljava/lang/String;)V

    goto :goto_3

    .line 453
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    const-string v23, "notification"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/app/NotificationManager;

    .line 455
    .local v12, notificationManager:Landroid/app/NotificationManager;
    sget v21, Landroid/dirEncryption/DirEncryptionManager;->SECURITY_POLICY_NOTIFICATION_ID:I

    move/from16 v0, v21

    invoke-virtual {v12, v0}, Landroid/app/NotificationManager;->cancel(I)V

    .line 456
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/DirEncryptServiceHelper;->mWasEncryptedCard:Z

    goto/16 :goto_0

    .line 461
    .end local v12           #notificationManager:Landroid/app/NotificationManager;
    :pswitch_5
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v21, v0

    const/16 v23, 0x4

    move/from16 v0, v21

    move/from16 v1, v23

    if-ne v0, v1, :cond_b

    .line 462
    const/16 v21, 0x1

    aget-object v15, p3, v21

    .line 463
    .local v15, path:Ljava/lang/String;
    const/16 v21, 0x2

    aget-object v21, p3, v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    .line 464
    .local v17, reqEnc:I
    const/16 v21, 0x3

    aget-object v19, p3, v21

    .line 466
    .local v19, status:Ljava/lang/String;
    const-string v21, "success"

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_9

    .line 467
    const-string v21, "RESP_ENCRYPT success"

    invoke-static/range {v21 .. v21}, Lcom/android/server/DirEncryptServiceHelper;->logD(Ljava/lang/String;)V

    .line 468
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    .line 471
    if-nez v17, :cond_6

    const/16 v21, 0x2ab

    move/from16 v0, p1

    move/from16 v1, v21

    if-ne v0, v1, :cond_6

    .line 472
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/DirEncryptServiceHelper;->mWasEncryptedCard:Z

    .line 477
    :goto_4
    new-instance v9, Landroid/content/Intent;

    const-string v21, "android.intent.action.SDCARD_ENCRYPTION_COMPLETED"

    move-object/from16 v0, v21

    invoke-direct {v9, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 478
    .local v9, intentEncCompleted:Landroid/content/Intent;
    const-string v23, "what"

    const/16 v21, 0x1

    move/from16 v0, v17

    move/from16 v1, v21

    if-ne v0, v1, :cond_7

    const-string v21, "encryption"

    :goto_5
    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 479
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    const-string v23, "android.permission.RECEIVE_SDCARD_ENCRYPTION"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v9, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 483
    if-nez v17, :cond_8

    const/16 v21, 0x3

    :goto_6
    const-string v23, "done"

    move-object/from16 v0, p0

    move/from16 v1, v21

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/android/server/DirEncryptServiceHelper;->notifyEncryptionStatusChanged(ILjava/lang/String;)V

    .line 498
    .end local v9           #intentEncCompleted:Landroid/content/Intent;
    :goto_7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 499
    .local v4, cmd:Ljava/lang/StringBuilder;
    const-string v21, "dir_crypto "

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v23, "unmount"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v23, " "

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v23, "/mnt/secure/staging"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 503
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/server/DirEncryptServiceHelper;->sendCommand(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 507
    :try_start_2
    const-string v21, "release dvfs lock"

    invoke-static/range {v21 .. v21}, Lcom/android/server/DirEncryptServiceHelper;->logD(Ljava/lang/String;)V

    .line 508
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DirEncryptServiceHelper;->mDVFSLock:Landroid/os/PowerManager$DVFSLock;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/os/PowerManager$DVFSLock;->release()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 509
    :catch_0
    move-exception v5

    .line 510
    .local v5, e:Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 474
    .end local v4           #cmd:Ljava/lang/StringBuilder;
    .end local v5           #e:Ljava/lang/Exception;
    :cond_6
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/DirEncryptServiceHelper;->mWasEncryptedCard:Z

    goto/16 :goto_4

    .line 478
    .restart local v9       #intentEncCompleted:Landroid/content/Intent;
    :cond_7
    const-string v21, "decryption"

    goto :goto_5

    .line 483
    :cond_8
    const/16 v21, 0x2

    goto :goto_6

    .line 485
    .end local v9           #intentEncCompleted:Landroid/content/Intent;
    :cond_9
    const-string v21, "RESP_ENCRYPT failed"

    invoke-static/range {v21 .. v21}, Lcom/android/server/DirEncryptServiceHelper;->logD(Ljava/lang/String;)V

    .line 486
    const/16 v21, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v17

    move-object/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/DirEncryptServiceHelper;->showNotification(IILjava/lang/String;)V

    .line 487
    const/16 v21, 0x1

    move/from16 v0, v17

    move/from16 v1, v21

    if-ne v0, v1, :cond_a

    .line 488
    const/16 v21, 0x5

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    .line 493
    :goto_8
    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/server/DirEncryptServiceHelper;->setStatus(I)V

    goto/16 :goto_7

    .line 490
    :cond_a
    const/16 v21, 0x6

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    goto :goto_8

    .line 514
    .end local v15           #path:Ljava/lang/String;
    .end local v17           #reqEnc:I
    .end local v19           #status:Ljava/lang/String;
    :cond_b
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "RESP_ENCRYPT extra data recvd["

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v23, v0

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v23, "], please fix!!"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/android/server/DirEncryptServiceHelper;->logD(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 519
    :pswitch_6
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v21, v0

    const/16 v23, 0x3

    move/from16 v0, v21

    move/from16 v1, v23

    if-ne v0, v1, :cond_c

    .line 520
    const/16 v21, 0x1

    aget-object v21, p3, v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    .line 521
    .restart local v17       #reqEnc:I
    const/16 v21, 0x2

    aget-object v21, p3, v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    .line 523
    .local v16, percentage:I
    const/16 v21, 0x4

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, ""

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v17

    move-object/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/DirEncryptServiceHelper;->showNotification(IILjava/lang/String;)V

    goto/16 :goto_0

    .line 526
    .end local v16           #percentage:I
    .end local v17           #reqEnc:I
    :cond_c
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "RESP_ENCRYPT extra data recvd["

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v23, v0

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v23, "], please fix!!"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/android/server/DirEncryptServiceHelper;->logD(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 532
    :pswitch_7
    const/16 v17, 0x0

    .line 533
    .restart local v17       #reqEnc:I
    const/16 v18, 0x0

    .line 534
    .local v18, reqFullEnc:I
    const/4 v7, 0x0

    .line 535
    .local v7, excludeMedia:I
    const/4 v6, 0x0

    .line 536
    .local v6, encType:I
    const/4 v11, 0x0

    .line 537
    .local v11, needed:I
    const/16 v20, 0x0

    .line 539
    .local v20, total:I
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v21, v0

    const/16 v23, 0x8

    move/from16 v0, v21

    move/from16 v1, v23

    if-ne v0, v1, :cond_d

    .line 540
    const/16 v21, 0x1

    aget-object v15, p3, v21

    .line 541
    .restart local v15       #path:Ljava/lang/String;
    const/16 v21, 0x2

    aget-object v21, p3, v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    .line 542
    const/16 v21, 0x3

    aget-object v21, p3, v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    .line 543
    const/16 v21, 0x4

    aget-object v21, p3, v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 544
    const/16 v21, 0x5

    aget-object v21, p3, v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 545
    const/16 v21, 0x6

    aget-object v21, p3, v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 546
    const/16 v21, 0x7

    aget-object v21, p3, v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    .line 548
    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/server/DirEncryptServiceHelper;->mErrAdditionalSpace:I

    .line 549
    const/16 v21, 0x4

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    .line 550
    const/16 v21, 0x5

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, ""

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move/from16 v1, v21

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v6, v2}, Lcom/android/server/DirEncryptServiceHelper;->showNotification(IILjava/lang/String;)V

    .line 557
    .end local v15           #path:Ljava/lang/String;
    :goto_9
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 558
    .restart local v4       #cmd:Ljava/lang/StringBuilder;
    const-string v21, "dir_crypto "

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v23, "unmount"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v23, " "

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v23, "/mnt/secure/staging"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 562
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/server/DirEncryptServiceHelper;->sendCommand(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 566
    :try_start_4
    const-string v21, "release dvfs lock"

    invoke-static/range {v21 .. v21}, Lcom/android/server/DirEncryptServiceHelper;->logD(Ljava/lang/String;)V

    .line 567
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DirEncryptServiceHelper;->mDVFSLock:Landroid/os/PowerManager$DVFSLock;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/os/PowerManager$DVFSLock;->release()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 572
    :goto_a
    const/16 v21, 0x0

    :try_start_5
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/server/DirEncryptServiceHelper;->setStatus(I)V

    .line 573
    if-nez v17, :cond_e

    const/16 v21, 0x3

    :goto_b
    const-string v23, "free"

    move-object/from16 v0, p0

    move/from16 v1, v21

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/android/server/DirEncryptServiceHelper;->notifyEncryptionStatusChanged(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 552
    .end local v4           #cmd:Ljava/lang/StringBuilder;
    :cond_d
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "RESP_PRESCAN_FULL_ERR extra data recvd["

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v23, v0

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v23, "], please fix!!"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/android/server/DirEncryptServiceHelper;->logD(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 568
    .restart local v4       #cmd:Ljava/lang/StringBuilder;
    :catch_1
    move-exception v5

    .line 569
    .restart local v5       #e:Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_a

    .line 573
    .end local v5           #e:Ljava/lang/Exception;
    :cond_e
    const/16 v21, 0x2

    goto :goto_b

    .line 578
    .end local v4           #cmd:Ljava/lang/StringBuilder;
    .end local v6           #encType:I
    .end local v7           #excludeMedia:I
    .end local v11           #needed:I
    .end local v17           #reqEnc:I
    .end local v18           #reqFullEnc:I
    .end local v20           #total:I
    :pswitch_8
    const/4 v13, -0x1

    .line 579
    .local v13, operation:I
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v21, v0

    const/16 v23, 0x3

    move/from16 v0, v21

    move/from16 v1, v23

    if-ne v0, v1, :cond_10

    .line 580
    const/16 v21, 0x1

    aget-object v15, p3, v21

    .line 581
    .restart local v15       #path:Ljava/lang/String;
    const/16 v21, 0x2

    aget-object v21, p3, v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    .line 583
    .restart local v17       #reqEnc:I
    const/16 v21, 0x7

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    .line 584
    const/16 v21, 0x3

    const-string v23, ""

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v17

    move-object/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/DirEncryptServiceHelper;->showNotification(IILjava/lang/String;)V

    .line 586
    if-nez v17, :cond_f

    const/4 v13, 0x3

    .line 604
    .end local v15           #path:Ljava/lang/String;
    .end local v17           #reqEnc:I
    :goto_c
    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/server/DirEncryptServiceHelper;->setStatus(I)V

    .line 605
    const-string v21, "free"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v13, v1}, Lcom/android/server/DirEncryptServiceHelper;->notifyEncryptionStatusChanged(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 586
    .restart local v15       #path:Ljava/lang/String;
    .restart local v17       #reqEnc:I
    :cond_f
    const/4 v13, 0x2

    goto :goto_c

    .line 588
    .end local v15           #path:Ljava/lang/String;
    .end local v17           #reqEnc:I
    :cond_10
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v21, v0

    const/16 v23, 0x4

    move/from16 v0, v21

    move/from16 v1, v23

    if-ne v0, v1, :cond_12

    .line 589
    const/16 v21, 0x1

    aget-object v15, p3, v21

    .line 590
    .restart local v15       #path:Ljava/lang/String;
    const/16 v21, 0x3

    aget-object v21, p3, v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    .line 592
    .local v19, status:I
    const/16 v21, 0x1

    move/from16 v0, v19

    move/from16 v1, v21

    if-ne v0, v1, :cond_11

    invoke-static {}, Lcom/android/server/DirEncryptServiceHelper$AppliedPolicies;->setPoliciesApplied()Z

    move-result v21

    if-eqz v21, :cond_11

    .line 593
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    .line 594
    const/16 v21, 0x2

    const/16 v23, 0x1

    const-string v24, "success"

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v23

    move-object/from16 v3, v24

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/DirEncryptServiceHelper;->showNotification(IILjava/lang/String;)V

    .line 599
    :goto_d
    const/4 v13, 0x2

    .line 600
    goto :goto_c

    .line 596
    :cond_11
    const/16 v21, 0x7

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    .line 597
    const/16 v21, 0x2

    const/16 v23, 0x1

    const-string v24, ""

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v23

    move-object/from16 v3, v24

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/DirEncryptServiceHelper;->showNotification(IILjava/lang/String;)V

    goto :goto_d

    .line 601
    .end local v15           #path:Ljava/lang/String;
    .end local v19           #status:I
    :cond_12
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "RESP_MOUNT extra data recvd["

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v23, v0

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v23, "], please fix!!"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/android/server/DirEncryptServiceHelper;->logD(Ljava/lang/String;)V

    goto/16 :goto_c

    .line 609
    .end local v13           #operation:I
    :pswitch_9
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v21, v0

    const/16 v23, 0x2

    move/from16 v0, v21

    move/from16 v1, v23

    if-ne v0, v1, :cond_16

    .line 610
    const/16 v21, 0x1

    aget-object v21, p3, v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    .line 611
    .restart local v19       #status:I
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    .line 613
    const/16 v21, 0x1

    move/from16 v0, v19

    move/from16 v1, v21

    if-ne v0, v1, :cond_14

    .line 614
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/DirEncryptServiceHelper;->mWasEncryptedCard:Z

    .line 615
    invoke-direct/range {p0 .. p0}, Lcom/android/server/DirEncryptServiceHelper;->getStorageCardEncryptionInternal()I

    move-result v21

    const/16 v23, 0x3

    move/from16 v0, v21

    move/from16 v1, v23

    if-ne v0, v1, :cond_13

    .line 616
    new-instance v8, Landroid/content/Intent;

    const-string v21, "android.app.action.START_SDCARD_ENCRYPTION"

    move-object/from16 v0, v21

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 617
    .local v8, intent:Landroid/content/Intent;
    const/high16 v21, 0x1000

    move/from16 v0, v21

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 618
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 620
    new-instance v10, Landroid/content/Intent;

    const-string v21, "android.intent.action.SDCARD_ENCRYPTION_REQUIRED"

    move-object/from16 v0, v21

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 621
    .local v10, intentEncRequired:Landroid/content/Intent;
    const-string v21, "required"

    const-string v23, "decryption"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 622
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    const-string v23, "android.permission.RECEIVE_SDCARD_ENCRYPTION"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v10, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 625
    .end local v8           #intent:Landroid/content/Intent;
    .end local v10           #intentEncRequired:Landroid/content/Intent;
    :cond_13
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/DirEncryptServiceHelper;->mSelfSDMountRequested:Z

    .line 626
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DirEncryptServiceHelper;->mStorageManager:Landroid/os/storage/StorageManager;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DirEncryptServiceHelper;->mDem:Landroid/dirEncryption/DirEncryptionManager;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/dirEncryption/DirEncryptionManager;->getExternalSdPath()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/server/DirEncryptServiceHelper;->doWorkForUSBState(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 629
    :cond_14
    invoke-direct/range {p0 .. p0}, Lcom/android/server/DirEncryptServiceHelper;->getStorageCardEncryptionInternal()I

    move-result v21

    const/16 v23, 0x2

    move/from16 v0, v21

    move/from16 v1, v23

    if-ne v0, v1, :cond_15

    .line 630
    new-instance v8, Landroid/content/Intent;

    const-string v21, "android.app.action.START_SDCARD_ENCRYPTION"

    move-object/from16 v0, v21

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 631
    .restart local v8       #intent:Landroid/content/Intent;
    const/high16 v21, 0x1000

    move/from16 v0, v21

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 632
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 634
    new-instance v10, Landroid/content/Intent;

    const-string v21, "android.intent.action.SDCARD_ENCRYPTION_REQUIRED"

    move-object/from16 v0, v21

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 635
    .restart local v10       #intentEncRequired:Landroid/content/Intent;
    const-string v21, "required"

    const-string v23, "encryption"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 636
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    const-string v23, "android.permission.RECEIVE_SDCARD_ENCRYPTION"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v10, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 640
    .end local v8           #intent:Landroid/content/Intent;
    .end local v10           #intentEncRequired:Landroid/content/Intent;
    :cond_15
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/DirEncryptServiceHelper;->mSelfSDMountRequested:Z

    .line 641
    const/16 v21, 0x3

    const-string v23, "done"

    move-object/from16 v0, p0

    move/from16 v1, v21

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/android/server/DirEncryptServiceHelper;->notifyEncryptionStatusChanged(ILjava/lang/String;)V

    .line 642
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/DirEncryptServiceHelper;->mWasEncryptedCard:Z

    goto/16 :goto_0

    .line 646
    .end local v19           #status:I
    :cond_16
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "RESP_ENC_META_CHECK extra data recvd["

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v23, v0

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v23, "], please fix!!"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/android/server/DirEncryptServiceHelper;->logD(Ljava/lang/String;)V

    .line 647
    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/server/DirEncryptServiceHelper;->setStatus(I)V

    .line 648
    const/16 v21, 0x3

    const-string v23, "free"

    move-object/from16 v0, p0

    move/from16 v1, v21

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/android/server/DirEncryptServiceHelper;->notifyEncryptionStatusChanged(ILjava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    .line 391
    nop

    :pswitch_data_0
    .packed-switch 0x2a8
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_4
        :pswitch_9
    .end packed-switch
.end method

.method ready()V
    .locals 1

    .prologue
    .line 310
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/DirEncryptServiceHelper;->setStatus(I)V

    .line 311
    return-void
.end method

.method public registerListener(Landroid/os/storage/IDirEncryptServiceListener;)V
    .locals 5
    .parameter "listener"

    .prologue
    .line 326
    iget-object v3, p0, Lcom/android/server/DirEncryptServiceHelper;->mListeners:Ljava/util/ArrayList;

    monitor-enter v3

    .line 327
    :try_start_0
    new-instance v0, Lcom/android/server/DirEncryptServiceHelper$DirEncryptServiceBinderListener;

    invoke-direct {v0, p0, p1}, Lcom/android/server/DirEncryptServiceHelper$DirEncryptServiceBinderListener;-><init>(Lcom/android/server/DirEncryptServiceHelper;Landroid/os/storage/IDirEncryptServiceListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 329
    .local v0, bl:Lcom/android/server/DirEncryptServiceHelper$DirEncryptServiceBinderListener;
    :try_start_1
    invoke-interface {p1}, Landroid/os/storage/IDirEncryptServiceListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v4, 0x0

    invoke-interface {v2, v0, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 330
    iget-object v2, p0, Lcom/android/server/DirEncryptServiceHelper;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 334
    :goto_0
    :try_start_2
    monitor-exit v3

    .line 335
    return-void

    .line 331
    :catch_0
    move-exception v1

    .line 332
    .local v1, rex:Landroid/os/RemoteException;
    const-string v2, "Failed to link to listener death"

    invoke-static {v2}, Lcom/android/server/DirEncryptServiceHelper;->logE(Ljava/lang/String;)V

    goto :goto_0

    .line 334
    .end local v0           #bl:Lcom/android/server/DirEncryptServiceHelper$DirEncryptServiceBinderListener;
    .end local v1           #rex:Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public setExecParams(Lcom/android/server/NativeDaemonConnector;Landroid/os/Handler;)V
    .locals 0
    .parameter "connector"
    .parameter "handler"

    .prologue
    .line 314
    iput-object p1, p0, Lcom/android/server/DirEncryptServiceHelper;->mConnector:Lcom/android/server/NativeDaemonConnector;

    .line 315
    iput-object p2, p0, Lcom/android/server/DirEncryptServiceHelper;->mHandler:Landroid/os/Handler;

    .line 318
    invoke-static {}, Lcom/android/server/DirEncryptServiceHelper$AppliedPolicies;->setPoliciesRemoved()Z

    .line 319
    return-void
.end method

.method public unregisterListener(Landroid/os/storage/IDirEncryptServiceListener;)V
    .locals 5
    .parameter "listener"

    .prologue
    .line 338
    iget-object v3, p0, Lcom/android/server/DirEncryptServiceHelper;->mListeners:Ljava/util/ArrayList;

    monitor-enter v3

    .line 339
    :try_start_0
    iget-object v2, p0, Lcom/android/server/DirEncryptServiceHelper;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/DirEncryptServiceHelper$DirEncryptServiceBinderListener;

    .line 340
    .local v0, bl:Lcom/android/server/DirEncryptServiceHelper$DirEncryptServiceBinderListener;
    iget-object v2, v0, Lcom/android/server/DirEncryptServiceHelper$DirEncryptServiceBinderListener;->mListener:Landroid/os/storage/IDirEncryptServiceListener;

    if-ne v2, p1, :cond_0

    .line 341
    iget-object v2, p0, Lcom/android/server/DirEncryptServiceHelper;->mListeners:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/server/DirEncryptServiceHelper;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 342
    monitor-exit v3

    .line 346
    .end local v0           #bl:Lcom/android/server/DirEncryptServiceHelper$DirEncryptServiceBinderListener;
    :goto_0
    return-void

    .line 345
    :cond_1
    monitor-exit v3

    goto :goto_0

    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method
