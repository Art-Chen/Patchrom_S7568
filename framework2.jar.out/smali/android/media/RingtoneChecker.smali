.class public Landroid/media/RingtoneChecker;
.super Ljava/lang/Object;
.source "RingtoneChecker.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "RingtoneChecker"


# instance fields
.field public mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private rm:Landroid/media/RingtoneManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 21
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v1, Landroid/media/RingtoneChecker$1;

    invoke-direct {v1, p0}, Landroid/media/RingtoneChecker$1;-><init>(Landroid/media/RingtoneChecker;)V

    iput-object v1, p0, Landroid/media/RingtoneChecker;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 22
    iput-object p1, p0, Landroid/media/RingtoneChecker;->mContext:Landroid/content/Context;

    .line 24
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.USBATCOMMAND_REQUEST"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 25
    .local v0, intentFilter:Landroid/content/IntentFilter;
    iget-object v1, p0, Landroid/media/RingtoneChecker;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/media/RingtoneChecker;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 26
    return-void
.end method

.method static synthetic access$000(Landroid/media/RingtoneChecker;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14
    invoke-direct {p0, p1}, Landroid/media/RingtoneChecker;->getRingtoneCountFromRingtoneManager(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Landroid/media/RingtoneChecker;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    iget-object v0, p0, Landroid/media/RingtoneChecker;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Landroid/media/RingtoneChecker;Landroid/content/Context;I)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Landroid/media/RingtoneChecker;->getDefaultRingtonePath(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getDefaultRingtonePath(Landroid/content/Context;I)Ljava/lang/String;
    .locals 10
    .parameter "context"
    .parameter "type"

    .prologue
    const/4 v9, 0x1

    const/4 v3, 0x0

    .line 78
    const/4 v8, 0x0

    .line 79
    .local v8, str:Ljava/lang/String;
    const/4 v6, 0x0

    .line 80
    .local v6, cursor:Landroid/database/Cursor;
    const/4 v1, 0x0

    .line 82
    .local v1, defaultRingtoneURI:Landroid/net/Uri;
    iget-object v0, p0, Landroid/media/RingtoneChecker;->rm:Landroid/media/RingtoneManager;

    invoke-static {p1, p2}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v1

    .line 83
    if-eqz v1, :cond_0

    .line 84
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-array v2, v9, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_data"

    aput-object v5, v2, v4

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 88
    :cond_0
    if-eqz v6, :cond_1

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v9, :cond_1

    .line 89
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 90
    const-string v0, "_data"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 96
    :cond_1
    if-eqz v6, :cond_2

    .line 97
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 100
    :cond_2
    :goto_0
    return-object v8

    .line 93
    :catch_0
    move-exception v7

    .line 94
    .local v7, e:Ljava/lang/Exception;
    :try_start_1
    const-string v0, "RingtoneChecker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: fail to get default ringtone("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 96
    if-eqz v6, :cond_2

    .line 97
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 96
    .end local v7           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 97
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method private getRingtoneCountFromRingtoneManager(I)I
    .locals 4
    .parameter "type"

    .prologue
    .line 68
    const/4 v1, -0x1

    .line 69
    .local v1, cursorCount:I
    new-instance v2, Landroid/media/RingtoneManager;

    iget-object v3, p0, Landroid/media/RingtoneChecker;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/media/RingtoneManager;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Landroid/media/RingtoneChecker;->rm:Landroid/media/RingtoneManager;

    .line 70
    iget-object v2, p0, Landroid/media/RingtoneChecker;->rm:Landroid/media/RingtoneManager;

    invoke-virtual {v2, p1}, Landroid/media/RingtoneManager;->setType(I)V

    .line 71
    iget-object v2, p0, Landroid/media/RingtoneChecker;->rm:Landroid/media/RingtoneManager;

    invoke-virtual {v2}, Landroid/media/RingtoneManager;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 72
    .local v0, cursor:Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 73
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 74
    return v1
.end method
