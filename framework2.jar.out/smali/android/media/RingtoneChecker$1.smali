.class Landroid/media/RingtoneChecker$1;
.super Landroid/content/BroadcastReceiver;
.source "RingtoneChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/RingtoneChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/RingtoneChecker;


# direct methods
.method constructor <init>(Landroid/media/RingtoneChecker;)V
    .locals 0
    .parameter

    .prologue
    .line 29
    iput-object p1, p0, Landroid/media/RingtoneChecker$1;->this$0:Landroid/media/RingtoneChecker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 15
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 32
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 33
    .local v1, action:Ljava/lang/String;
    const-string v12, "RingtoneChecker"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "receive intent action is "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    const-string v12, "android.intent.action.USBATCOMMAND_REQUEST"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 36
    const-string v12, "command"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 37
    .local v3, command:Ljava/lang/String;
    const-string v12, "param"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 38
    .local v9, param:Ljava/lang/String;
    const-string v12, "RingtoneChecker"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "USBATCOMMAND_REQUEST, command = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", param = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    const-string v12, "AT+CPIITEST"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    const/4 v12, 0x0

    const/4 v13, 0x3

    invoke-virtual {v9, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    const-string v13, "=10"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 41
    iget-object v12, p0, Landroid/media/RingtoneChecker$1;->this$0:Landroid/media/RingtoneChecker;

    const/4 v13, 0x1

    #calls: Landroid/media/RingtoneChecker;->getRingtoneCountFromRingtoneManager(I)I
    invoke-static {v12, v13}, Landroid/media/RingtoneChecker;->access$000(Landroid/media/RingtoneChecker;I)I

    move-result v11

    .line 42
    .local v11, ring_cnt:I
    iget-object v12, p0, Landroid/media/RingtoneChecker$1;->this$0:Landroid/media/RingtoneChecker;

    const/4 v13, 0x2

    #calls: Landroid/media/RingtoneChecker;->getRingtoneCountFromRingtoneManager(I)I
    invoke-static {v12, v13}, Landroid/media/RingtoneChecker;->access$000(Landroid/media/RingtoneChecker;I)I

    move-result v8

    .line 43
    .local v8, noti_cnt:I
    iget-object v12, p0, Landroid/media/RingtoneChecker$1;->this$0:Landroid/media/RingtoneChecker;

    const/4 v13, 0x4

    #calls: Landroid/media/RingtoneChecker;->getRingtoneCountFromRingtoneManager(I)I
    invoke-static {v12, v13}, Landroid/media/RingtoneChecker;->access$000(Landroid/media/RingtoneChecker;I)I

    move-result v2

    .line 44
    .local v2, alarm_cnt:I
    iget-object v12, p0, Landroid/media/RingtoneChecker$1;->this$0:Landroid/media/RingtoneChecker;

    iget-object v13, p0, Landroid/media/RingtoneChecker$1;->this$0:Landroid/media/RingtoneChecker;

    #getter for: Landroid/media/RingtoneChecker;->mContext:Landroid/content/Context;
    invoke-static {v13}, Landroid/media/RingtoneChecker;->access$100(Landroid/media/RingtoneChecker;)Landroid/content/Context;

    move-result-object v13

    const/4 v14, 0x1

    #calls: Landroid/media/RingtoneChecker;->getDefaultRingtonePath(Landroid/content/Context;I)Ljava/lang/String;
    invoke-static {v12, v13, v14}, Landroid/media/RingtoneChecker;->access$200(Landroid/media/RingtoneChecker;Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v6

    .line 45
    .local v6, defaultRing:Ljava/lang/String;
    iget-object v12, p0, Landroid/media/RingtoneChecker$1;->this$0:Landroid/media/RingtoneChecker;

    iget-object v13, p0, Landroid/media/RingtoneChecker$1;->this$0:Landroid/media/RingtoneChecker;

    #getter for: Landroid/media/RingtoneChecker;->mContext:Landroid/content/Context;
    invoke-static {v13}, Landroid/media/RingtoneChecker;->access$100(Landroid/media/RingtoneChecker;)Landroid/content/Context;

    move-result-object v13

    const/4 v14, 0x2

    #calls: Landroid/media/RingtoneChecker;->getDefaultRingtonePath(Landroid/content/Context;I)Ljava/lang/String;
    invoke-static {v12, v13, v14}, Landroid/media/RingtoneChecker;->access$200(Landroid/media/RingtoneChecker;Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v5

    .line 46
    .local v5, defaultNoti:Ljava/lang/String;
    iget-object v12, p0, Landroid/media/RingtoneChecker$1;->this$0:Landroid/media/RingtoneChecker;

    iget-object v13, p0, Landroid/media/RingtoneChecker$1;->this$0:Landroid/media/RingtoneChecker;

    #getter for: Landroid/media/RingtoneChecker;->mContext:Landroid/content/Context;
    invoke-static {v13}, Landroid/media/RingtoneChecker;->access$100(Landroid/media/RingtoneChecker;)Landroid/content/Context;

    move-result-object v13

    const/4 v14, 0x4

    #calls: Landroid/media/RingtoneChecker;->getDefaultRingtonePath(Landroid/content/Context;I)Ljava/lang/String;
    invoke-static {v12, v13, v14}, Landroid/media/RingtoneChecker;->access$200(Landroid/media/RingtoneChecker;Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    .line 48
    .local v4, defaultAlarm:Ljava/lang/String;
    const-string v12, "RingtoneChecker"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Ringtone count is "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    const-string v12, "RingtoneChecker"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Notification count is "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    const-string v12, "RingtoneChecker"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Alarm count is "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    const-string v12, "RingtoneChecker"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Default Ringtone is "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    const-string v12, "RingtoneChecker"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Default Notification is "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    const-string v12, "RingtoneChecker"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Default Alarm is "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "\r\n+CPIITEST ="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\r\nOK"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 57
    .local v10, response:Ljava/lang/String;
    const-string v12, "RingtoneChecker"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "response is => "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    new-instance v7, Landroid/content/Intent;

    const-string v12, "android.intent.action.USBATCOMMAND_RESPONSE"

    invoke-direct {v7, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 60
    .local v7, i:Landroid/content/Intent;
    const-string v12, "response"

    invoke-virtual {v7, v12, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 61
    iget-object v12, p0, Landroid/media/RingtoneChecker$1;->this$0:Landroid/media/RingtoneChecker;

    #getter for: Landroid/media/RingtoneChecker;->mContext:Landroid/content/Context;
    invoke-static {v12}, Landroid/media/RingtoneChecker;->access$100(Landroid/media/RingtoneChecker;)Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 64
    .end local v2           #alarm_cnt:I
    .end local v3           #command:Ljava/lang/String;
    .end local v4           #defaultAlarm:Ljava/lang/String;
    .end local v5           #defaultNoti:Ljava/lang/String;
    .end local v6           #defaultRing:Ljava/lang/String;
    .end local v7           #i:Landroid/content/Intent;
    .end local v8           #noti_cnt:I
    .end local v9           #param:Ljava/lang/String;
    .end local v10           #response:Ljava/lang/String;
    .end local v11           #ring_cnt:I
    :cond_0
    return-void
.end method
