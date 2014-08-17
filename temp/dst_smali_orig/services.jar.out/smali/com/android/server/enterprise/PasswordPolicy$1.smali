.class Lcom/android/server/enterprise/PasswordPolicy$1;
.super Landroid/content/BroadcastReceiver;
.source "PasswordPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/PasswordPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/PasswordPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/PasswordPolicy;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/server/enterprise/PasswordPolicy$1;->this$0:Lcom/android/server/enterprise/PasswordPolicy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 20
    .parameter "context"
    .parameter "intent"

    .prologue
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    .local v4, action:Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v15

    .local v15, token:J
    const-string v17, "com.android.server.enterprise.PWD_CHANGE_TIMEOUT"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/PasswordPolicy$1;->this$0:Lcom/android/server/enterprise/PasswordPolicy;

    move-object/from16 v17, v0

    #getter for: Lcom/android/server/enterprise/PasswordPolicy;->mTelManager:Landroid/telephony/TelephonyManager;
    invoke-static/range {v17 .. v17}, Lcom/android/server/enterprise/PasswordPolicy;->access$000(Lcom/android/server/enterprise/PasswordPolicy;)Landroid/telephony/TelephonyManager;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v17

    if-nez v17, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/PasswordPolicy$1;->this$0:Lcom/android/server/enterprise/PasswordPolicy;

    move-object/from16 v17, v0

    const/16 v18, 0x2

    invoke-virtual/range {v17 .. v18}, Lcom/android/server/enterprise/PasswordPolicy;->setPwdChangeRequested(I)Z

    new-instance v9, Landroid/content/Intent;

    const-string v17, "secedm.src.android.app.enterprise.action.DO_KEYGUARD"

    move-object/from16 v0, v17

    invoke-direct {v9, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v9, lock_intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/PasswordPolicy$1;->this$0:Lcom/android/server/enterprise/PasswordPolicy;

    move-object/from16 v17, v0

    #getter for: Lcom/android/server/enterprise/PasswordPolicy;->mContext:Landroid/content/Context;
    invoke-static/range {v17 .. v17}, Lcom/android/server/enterprise/PasswordPolicy;->access$100(Lcom/android/server/enterprise/PasswordPolicy;)Landroid/content/Context;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v9           #lock_intent:Landroid/content/Intent;
    :cond_0
    :goto_0
    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_1
    return-void

    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/PasswordPolicy$1;->this$0:Lcom/android/server/enterprise/PasswordPolicy;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lcom/android/server/enterprise/PasswordPolicy;->setPwdChangeRequested(I)Z

    const/16 v17, 0x2

    invoke-static/range {v17 .. v17}, Lcom/android/server/enterprise/PasswordPolicy;->access$202(I)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v5

    .local v5, e:Ljava/lang/Exception;
    const-string v17, "PasswordPolicy"

    const-string v18, "is pwd change enforced??"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v5           #e:Ljava/lang/Exception;
    :cond_2
    const-string v17, "android.intent.action.BOOT_COMPLETED"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_4

    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/PasswordPolicy$1;->this$0:Lcom/android/server/enterprise/PasswordPolicy;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/enterprise/PasswordPolicy;->isChangeRequested()I

    move-result v17

    const/16 v18, 0x3

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/PasswordPolicy$1;->this$0:Lcom/android/server/enterprise/PasswordPolicy;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/enterprise/PasswordPolicy;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v10

    .local v10, mDPM:Landroid/app/admin/DevicePolicyManager;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/PasswordPolicy$1;->this$0:Lcom/android/server/enterprise/PasswordPolicy;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/enterprise/PasswordPolicy;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v14

    .local v14, quality:I
    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLength(Landroid/content/ComponentName;)I

    move-result v12

    .local v12, minLength:I
    invoke-virtual {v10, v14}, Landroid/app/admin/DevicePolicyManager;->getPasswordMaximumLength(I)I

    move-result v11

    .local v11, maxLength:I
    new-instance v8, Landroid/content/Intent;

    const-string v17, "android.app.action.CHANGE_DEVICE_PASSWORD"

    move-object/from16 v0, v17

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v8, it:Landroid/content/Intent;
    const-string v17, "lockscreen.password_type"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v17, "lockscreen.password_min"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v17, "lockscreen.password_max"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v17, "lockscreen.password_old"

    const-string v18, "12345"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v17, "confirm_credentials"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v17, 0x1000

    move/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v17, 0x40

    move/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v17, 0x80

    move/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/PasswordPolicy$1;->this$0:Lcom/android/server/enterprise/PasswordPolicy;

    move-object/from16 v17, v0

    #getter for: Lcom/android/server/enterprise/PasswordPolicy;->mContext:Landroid/content/Context;
    invoke-static/range {v17 .. v17}, Lcom/android/server/enterprise/PasswordPolicy;->access$100(Lcom/android/server/enterprise/PasswordPolicy;)Landroid/content/Context;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .end local v8           #it:Landroid/content/Intent;
    .end local v10           #mDPM:Landroid/app/admin/DevicePolicyManager;
    .end local v11           #maxLength:I
    .end local v12           #minLength:I
    .end local v14           #quality:I
    :catch_1
    move-exception v5

    .restart local v5       #e:Ljava/lang/Exception;
    const-string v17, "PasswordPolicy"

    const-string v18, "is new pwd enforced?"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v5           #e:Ljava/lang/Exception;
    :cond_3
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/PasswordPolicy$1;->this$0:Lcom/android/server/enterprise/PasswordPolicy;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/enterprise/PasswordPolicy;->isChangeRequested()I

    move-result v17

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/PasswordPolicy$1;->this$0:Lcom/android/server/enterprise/PasswordPolicy;

    move-object/from16 v17, v0

    const/16 v18, 0x2

    invoke-virtual/range {v17 .. v18}, Lcom/android/server/enterprise/PasswordPolicy;->setPwdChangeRequested(I)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    :cond_4
    const-string v17, "android.intent.action.PHONE_STATE"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/PasswordPolicy$1;->this$0:Lcom/android/server/enterprise/PasswordPolicy;

    move-object/from16 v17, v0

    #getter for: Lcom/android/server/enterprise/PasswordPolicy;->mTelManager:Landroid/telephony/TelephonyManager;
    invoke-static/range {v17 .. v17}, Lcom/android/server/enterprise/PasswordPolicy;->access$000(Lcom/android/server/enterprise/PasswordPolicy;)Landroid/telephony/TelephonyManager;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v17

    if-nez v17, :cond_0

    invoke-static {}, Lcom/android/server/enterprise/PasswordPolicy;->access$200()I

    move-result v17

    if-lez v17, :cond_0

    invoke-static {}, Lcom/android/server/enterprise/PasswordPolicy;->access$200()I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/PasswordPolicy$1;->this$0:Lcom/android/server/enterprise/PasswordPolicy;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Lcom/android/server/enterprise/PasswordPolicy;->setPwdChangeRequested(I)Z

    :cond_5
    :goto_2
    const/16 v17, 0x0

    invoke-static/range {v17 .. v17}, Lcom/android/server/enterprise/PasswordPolicy;->access$202(I)I

    new-instance v9, Landroid/content/Intent;

    const-string v17, "secedm.src.android.app.enterprise.action.DO_KEYGUARD"

    move-object/from16 v0, v17

    invoke-direct {v9, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v9       #lock_intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/PasswordPolicy$1;->this$0:Lcom/android/server/enterprise/PasswordPolicy;

    move-object/from16 v17, v0

    #getter for: Lcom/android/server/enterprise/PasswordPolicy;->mContext:Landroid/content/Context;
    invoke-static/range {v17 .. v17}, Lcom/android/server/enterprise/PasswordPolicy;->access$100(Lcom/android/server/enterprise/PasswordPolicy;)Landroid/content/Context;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .end local v9           #lock_intent:Landroid/content/Intent;
    :cond_6
    invoke-static {}, Lcom/android/server/enterprise/PasswordPolicy;->access$200()I

    move-result v17

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/PasswordPolicy$1;->this$0:Lcom/android/server/enterprise/PasswordPolicy;

    move-object/from16 v17, v0

    const/16 v18, 0x2

    invoke-virtual/range {v17 .. v18}, Lcom/android/server/enterprise/PasswordPolicy;->setPwdChangeRequested(I)Z

    goto :goto_2

    :cond_7
    invoke-static {}, Lcom/android/server/enterprise/PasswordPolicy;->access$200()I

    move-result v17

    const/16 v18, 0x3

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/PasswordPolicy$1;->this$0:Lcom/android/server/enterprise/PasswordPolicy;

    move-object/from16 v17, v0

    const/16 v18, 0x3

    invoke-virtual/range {v17 .. v18}, Lcom/android/server/enterprise/PasswordPolicy;->setPwdChangeRequested(I)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/PasswordPolicy$1;->this$0:Lcom/android/server/enterprise/PasswordPolicy;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/enterprise/PasswordPolicy;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v10

    .restart local v10       #mDPM:Landroid/app/admin/DevicePolicyManager;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/PasswordPolicy$1;->this$0:Lcom/android/server/enterprise/PasswordPolicy;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/enterprise/PasswordPolicy;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v14

    .restart local v14       #quality:I
    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLength(Landroid/content/ComponentName;)I

    move-result v12

    .restart local v12       #minLength:I
    invoke-virtual {v10, v14}, Landroid/app/admin/DevicePolicyManager;->getPasswordMaximumLength(I)I

    move-result v11

    .restart local v11       #maxLength:I
    new-instance v8, Landroid/content/Intent;

    const-string v17, "android.app.action.CHANGE_DEVICE_PASSWORD"

    move-object/from16 v0, v17

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v8       #it:Landroid/content/Intent;
    const-string v17, "lockscreen.password_type"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v17, "lockscreen.password_min"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v17, "lockscreen.password_max"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v17, "lockscreen.password_old"

    const-string v18, "12345"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v17, "confirm_credentials"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v17, 0x1000

    move/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v17, 0x40

    move/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v17, 0x80

    move/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/PasswordPolicy$1;->this$0:Lcom/android/server/enterprise/PasswordPolicy;

    move-object/from16 v17, v0

    #getter for: Lcom/android/server/enterprise/PasswordPolicy;->mContext:Landroid/content/Context;
    invoke-static/range {v17 .. v17}, Lcom/android/server/enterprise/PasswordPolicy;->access$100(Lcom/android/server/enterprise/PasswordPolicy;)Landroid/content/Context;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_2

    .end local v8           #it:Landroid/content/Intent;
    .end local v10           #mDPM:Landroid/app/admin/DevicePolicyManager;
    .end local v11           #maxLength:I
    .end local v12           #minLength:I
    .end local v14           #quality:I
    :cond_8
    const-string v17, "com.android.server.MDM_PASSWORD_EXPIRING_NOTIFICATION"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_0

    const-string v17, "PasswordPolicy"

    const-string v18, "Received MDM_PASSWORD_EXPIRING_NOTIFICATION intent"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v17, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/PasswordPolicy$1;->this$0:Lcom/android/server/enterprise/PasswordPolicy;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    #calls: Lcom/android/server/enterprise/PasswordPolicy;->isMDMAdmin(Landroid/content/Intent;)Z
    invoke-static {v0, v1}, Lcom/android/server/enterprise/PasswordPolicy;->access$300(Lcom/android/server/enterprise/PasswordPolicy;Landroid/content/Intent;)Z

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_0

    const-string v17, "expiration"

    const-wide/16 v18, -0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move-wide/from16 v2, v18

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    .local v6, expiration:J
    const-wide/16 v17, -0x1

    cmp-long v17, v6, v17

    if-eqz v17, :cond_9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    cmp-long v17, v6, v17

    if-lez v17, :cond_a

    :cond_9
    const-string v17, "PasswordPolicy"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "In grace period or failed to get "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_a
    const-string v17, "PasswordPolicy"

    const-string v18, "Password expired already so launching password screen"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v13, Landroid/content/Intent;

    const-string v17, "android.app.action.SET_NEW_PASSWORD"

    move-object/from16 v0, v17

    invoke-direct {v13, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v13, pwdIntent:Landroid/content/Intent;
    const/high16 v17, 0x1000

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method
