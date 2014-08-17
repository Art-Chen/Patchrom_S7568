.class Lcom/samsung/commonimsservice/SamsungAPCommonService$1;
.super Ljava/lang/Object;
.source "SamsungAPCommonService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/commonimsservice/SamsungAPCommonService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;


# direct methods
.method constructor <init>(Lcom/samsung/commonimsservice/SamsungAPCommonService;)V
    .locals 0
    .parameter

    .prologue
    .line 91
    iput-object p1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$1;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 7
    .parameter "className"
    .parameter "service"

    .prologue
    const/4 v6, 0x0

    .line 103
    iget-object v3, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$1;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    const-string v4, "IMS service connection connected"

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$000(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 104
    iget-object v3, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$1;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    invoke-static {p2}, Lcom/sec/android/internal/ims/IIMSService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/android/internal/ims/IIMSService;

    move-result-object v4

    #setter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;
    invoke-static {v3, v4}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$102(Lcom/samsung/commonimsservice/SamsungAPCommonService;Lcom/sec/android/internal/ims/IIMSService;)Lcom/sec/android/internal/ims/IIMSService;

    .line 107
    :try_start_0
    iget-object v3, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$1;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;
    invoke-static {v3}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$100(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Lcom/sec/android/internal/ims/IIMSService;

    move-result-object v3

    if-nez v3, :cond_2

    .line 108
    iget-object v3, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$1;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    const-string v4, "NULL IMS service received!!"

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$000(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 109
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v3, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$1;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mServiceConnectionListener:Ljava/util/List;
    invoke-static {v3}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 110
    iget-object v3, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$1;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mServiceConnectionListener:Ljava/util/List;
    invoke-static {v3}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/commonimsservice/IImsServiceConnectionListener;

    .line 111
    .local v2, listener:Lcom/samsung/commonimsservice/IImsServiceConnectionListener;
    if-eqz v2, :cond_0

    .line 112
    invoke-interface {v2}, Lcom/samsung/commonimsservice/IImsServiceConnectionListener;->onDisconnected()V

    .line 109
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 116
    .end local v2           #listener:Lcom/samsung/commonimsservice/IImsServiceConnectionListener;
    :cond_1
    iget-object v3, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$1;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    const/4 v4, 0x0

    #setter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->serviceConnStatus:Z
    invoke-static {v3, v4}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$302(Lcom/samsung/commonimsservice/SamsungAPCommonService;Z)Z

    .line 139
    :goto_1
    return-void

    .line 118
    .end local v1           #i:I
    :cond_2
    iget-object v3, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$1;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;
    invoke-static {v3}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$100(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Lcom/sec/android/internal/ims/IIMSService;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$1;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    iget-object v4, v4, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsEventListener:Lcom/sec/android/ims/IMSEventListener;

    iget-object v4, v4, Lcom/sec/android/ims/IMSEventListener;->callback:Lcom/sec/android/internal/ims/IIMSEventListener;

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Lcom/sec/android/internal/ims/IIMSService;->registerListener(Lcom/sec/android/internal/ims/IIMSEventListener;I)V

    .line 119
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_2
    iget-object v3, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$1;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mServiceConnectionListener:Ljava/util/List;
    invoke-static {v3}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_4

    .line 120
    iget-object v3, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$1;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mServiceConnectionListener:Ljava/util/List;
    invoke-static {v3}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/commonimsservice/IImsServiceConnectionListener;

    .line 121
    .restart local v2       #listener:Lcom/samsung/commonimsservice/IImsServiceConnectionListener;
    if-eqz v2, :cond_3

    .line 122
    invoke-interface {v2}, Lcom/samsung/commonimsservice/IImsServiceConnectionListener;->onConnected()V

    .line 119
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 125
    .end local v2           #listener:Lcom/samsung/commonimsservice/IImsServiceConnectionListener;
    :cond_4
    iget-object v3, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$1;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    const/4 v4, 0x1

    #setter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->serviceConnStatus:Z
    invoke-static {v3, v4}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$302(Lcom/samsung/commonimsservice/SamsungAPCommonService;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 127
    .end local v1           #i:I
    :catch_0
    move-exception v0

    .line 128
    .local v0, e:Landroid/os/RemoteException;
    iget-object v3, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$1;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    const-string v4, "IMS event listener registration failed!!!"

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$000(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 129
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 130
    iget-object v3, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$1;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    const/4 v4, 0x0

    #setter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;
    invoke-static {v3, v4}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$102(Lcom/samsung/commonimsservice/SamsungAPCommonService;Lcom/sec/android/internal/ims/IIMSService;)Lcom/sec/android/internal/ims/IIMSService;

    .line 131
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_3
    iget-object v3, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$1;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mServiceConnectionListener:Ljava/util/List;
    invoke-static {v3}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_6

    .line 132
    iget-object v3, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$1;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mServiceConnectionListener:Ljava/util/List;
    invoke-static {v3}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/commonimsservice/IImsServiceConnectionListener;

    .line 133
    .restart local v2       #listener:Lcom/samsung/commonimsservice/IImsServiceConnectionListener;
    if-eqz v2, :cond_5

    .line 134
    invoke-interface {v2}, Lcom/samsung/commonimsservice/IImsServiceConnectionListener;->onDisconnected()V

    .line 131
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 137
    .end local v2           #listener:Lcom/samsung/commonimsservice/IImsServiceConnectionListener;
    :cond_6
    iget-object v3, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$1;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #setter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->serviceConnStatus:Z
    invoke-static {v3, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$302(Lcom/samsung/commonimsservice/SamsungAPCommonService;Z)Z

    goto :goto_1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 4
    .parameter "className"

    .prologue
    .line 142
    const-string v2, "SamsungAPCommonService"

    const-string v3, "IMS service connection disconnected"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    iget-object v2, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$1;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    const/4 v3, 0x0

    #setter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;
    invoke-static {v2, v3}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$102(Lcom/samsung/commonimsservice/SamsungAPCommonService;Lcom/sec/android/internal/ims/IIMSService;)Lcom/sec/android/internal/ims/IIMSService;

    .line 144
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$1;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mServiceConnectionListener:Ljava/util/List;
    invoke-static {v2}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 145
    iget-object v2, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$1;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mServiceConnectionListener:Ljava/util/List;
    invoke-static {v2}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/commonimsservice/IImsServiceConnectionListener;

    .line 146
    .local v1, listener:Lcom/samsung/commonimsservice/IImsServiceConnectionListener;
    if-eqz v1, :cond_0

    .line 147
    invoke-interface {v1}, Lcom/samsung/commonimsservice/IImsServiceConnectionListener;->onDisconnected()V

    .line 144
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 150
    .end local v1           #listener:Lcom/samsung/commonimsservice/IImsServiceConnectionListener;
    :cond_1
    return-void
.end method
