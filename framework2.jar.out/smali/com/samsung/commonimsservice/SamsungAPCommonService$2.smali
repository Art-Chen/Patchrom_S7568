.class Lcom/samsung/commonimsservice/SamsungAPCommonService$2;
.super Lcom/sec/android/ims/IMSEventListener;
.source "SamsungAPCommonService.java"


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
    .line 159
    iput-object p1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    invoke-direct {p0}, Lcom/sec/android/ims/IMSEventListener;-><init>()V

    return-void
.end method


# virtual methods
.method public handleEvent(IIII[BLcom/sec/android/internal/ims/IIMSParams;)V
    .locals 8
    .parameter "appType"
    .parameter "eventType"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "data"
    .parameter "param"

    .prologue
    .line 170
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IMS event received EventType["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "AppType ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] \n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "Arg1 ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] \n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "Arg2 ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]\n "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "DATA ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$000(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 173
    if-eqz p6, :cond_0

    .line 174
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IMS event received EventType["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "AppType ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] \n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "Arg1 ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] \n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "Arg2 ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]\n "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "DATA ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]\nPDATA ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p6}, Lcom/sec/android/internal/ims/IIMSParams;->getPLettering()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "[\nHistoryDATA ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p6}, Lcom/sec/android/internal/ims/IIMSParams;->getHistoryInfo()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]\nModify Supported : ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p6}, Lcom/sec/android/internal/ims/IIMSParams;->getModifyHeader()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$000(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 179
    :cond_0
    const/16 v5, 0xa

    if-ne p1, v5, :cond_1

    .line 180
    packed-switch p2, :pswitch_data_0

    .line 207
    :cond_1
    const/16 v5, 0x8

    if-eq p1, v5, :cond_2

    const/4 v5, 0x4

    if-eq p1, v5, :cond_2

    const/4 v5, 0x6

    if-eq p1, v5, :cond_2

    const/4 v5, 0x5

    if-ne p1, v5, :cond_59

    .line 212
    :cond_2
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CallState listener list size ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v7}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$600(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$000(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 213
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "EventType recieved["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] call register len ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v7}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$600(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$000(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 214
    sparse-switch p2, :sswitch_data_0

    .line 1151
    :cond_3
    :goto_0
    return-void

    .line 189
    :pswitch_0
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    const/4 v6, 0x1

    #setter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->registrationStatus:Z
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$402(Lcom/samsung/commonimsservice/SamsungAPCommonService;Z)Z

    .line 190
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSRegListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$500(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_1

    .line 191
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSRegListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$500(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSRegisterStateListener;

    .line 192
    .local v3, listener:Lcom/samsung/commonimsservice/IIMSRegisterStateListener;
    if-eqz v3, :cond_4

    .line 194
    if-eqz p5, :cond_5

    .line 195
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, p5}, Ljava/lang/String;-><init>([B)V

    .line 199
    .local v4, str:Ljava/lang/String;
    :goto_2
    int-to-long v5, p3

    invoke-interface {v3, v4, v5, v6}, Lcom/samsung/commonimsservice/IIMSRegisterStateListener;->onRegistrationDone(Ljava/lang/String;J)V

    .line 190
    .end local v4           #str:Ljava/lang/String;
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 197
    :cond_5
    const-string v4, ""

    .restart local v4       #str:Ljava/lang/String;
    goto :goto_2

    .line 217
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSRegisterStateListener;
    .end local v4           #str:Ljava/lang/String;
    :sswitch_0
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_3
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSRegListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$500(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 218
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSRegListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$500(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSRegisterStateListener;

    .line 219
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSRegisterStateListener;
    invoke-interface {v3, p3, p4}, Lcom/samsung/commonimsservice/IIMSRegisterStateListener;->onNetworkTransition(II)V

    .line 217
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 226
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSRegisterStateListener;
    :sswitch_1
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    const-string v6, "VideoListener: Received Event:IMS_CALL_REMOTE_CAPTURE_SUCCESS"

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$000(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 228
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_4
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$600(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 229
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$600(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 230
    .local v3, listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$000(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 231
    if-eqz v3, :cond_6

    .line 232
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$000(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 233
    const/4 v5, 0x0

    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, p5}, Ljava/lang/String;-><init>([B)V

    invoke-interface {v3, p3, v5, v6}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onCaptureSuccess(IZLjava/lang/String;)V

    .line 228
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 241
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_2
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    const-string v6, "VideoListener: Received Event:IMS_CALL_REMOTE_CAPTURE_FAILURE"

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$000(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 243
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_5
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$600(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 244
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$600(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 245
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$000(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 246
    if-eqz v3, :cond_7

    .line 247
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$000(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 248
    const/4 v5, 0x0

    invoke-interface {v3, p3, v5}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onCaptureFailure(IZ)V

    .line 243
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 255
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_3
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    const-string v6, "VideoListener: Received Event:IMS_CALL_LOCAL_CAPTURE_SUCCESS"

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$000(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 257
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_6
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$600(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 258
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$600(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 259
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$000(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 260
    if-eqz v3, :cond_8

    .line 261
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$000(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 262
    const/4 v5, 0x1

    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, p5}, Ljava/lang/String;-><init>([B)V

    invoke-interface {v3, p3, v5, v6}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onCaptureSuccess(IZLjava/lang/String;)V

    .line 257
    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 271
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_4
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    const-string v6, "VideoListener: Received Event:IMS_CALL_LOCAL_CAPTURE_FAILURE"

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$000(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 273
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_7
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$600(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 274
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$600(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 275
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$000(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 276
    if-eqz v3, :cond_9

    .line 277
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$000(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 278
    const/4 v5, 0x1

    invoke-interface {v3, p3, v5}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onCaptureFailure(IZ)V

    .line 273
    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 285
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_5
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "VideoListener: Received Event:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$000(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 287
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_8
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$600(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 288
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$600(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 289
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$000(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 290
    if-eqz v3, :cond_a

    .line 291
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$000(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 292
    const/4 v5, 0x0

    invoke-interface {v3, p3, v5}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onCameraEvent(IZ)V

    .line 287
    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 298
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_6
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "VideoListener: Received Event:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$000(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 300
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_9
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$600(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 301
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$600(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 302
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$000(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 303
    if-eqz v3, :cond_b

    .line 304
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$000(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 305
    const/4 v5, 0x1

    invoke-interface {v3, p3, v5}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onCameraEvent(IZ)V

    .line 300
    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 312
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_7
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->getCallType(II)I
    invoke-static {v5, p1, p4}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;II)I

    move-result v0

    .line 324
    .local v0, callType:I
    if-eqz p5, :cond_d

    .line 325
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, p5}, Ljava/lang/String;-><init>([B)V

    .line 329
    .restart local v4       #str:Ljava/lang/String;
    :goto_a
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SessionID ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] RemoteURI ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] CallType ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$000(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 330
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_b
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$600(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 331
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$600(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 332
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$000(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 333
    if-eqz v3, :cond_c

    .line 334
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$000(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 335
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->getCallType(II)I
    invoke-static {v5, p1, p4}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;II)I

    move-result v5

    invoke-interface {v3, p3, v4, p6, v5}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onRinging(ILjava/lang/String;Lcom/sec/android/internal/ims/IIMSParams;I)V

    .line 330
    :cond_c
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 327
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    .end local v4           #str:Ljava/lang/String;
    :cond_d
    const-string v4, ""

    .restart local v4       #str:Ljava/lang/String;
    goto/16 :goto_a

    .line 344
    .end local v0           #callType:I
    .end local v4           #str:Ljava/lang/String;
    :sswitch_8
    if-eqz p5, :cond_f

    .line 345
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, p5}, Ljava/lang/String;-><init>([B)V

    .line 349
    .restart local v4       #str:Ljava/lang/String;
    :goto_c
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #setter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->regExpiry:I
    invoke-static {v5, p3}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$802(Lcom/samsung/commonimsservice/SamsungAPCommonService;I)I

    .line 350
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    #setter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->regUri:Ljava/lang/String;
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$902(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)Ljava/lang/String;

    .line 351
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_d
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSRegListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$500(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 352
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSRegListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$500(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSRegisterStateListener;

    .line 353
    .local v3, listener:Lcom/samsung/commonimsservice/IIMSRegisterStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$000(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 354
    if-eqz v3, :cond_e

    .line 355
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$000(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 356
    int-to-long v5, p3

    invoke-interface {v3, v4, v5, v6}, Lcom/samsung/commonimsservice/IIMSRegisterStateListener;->onRegistrationDone(Ljava/lang/String;J)V

    .line 351
    :cond_e
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 347
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSRegisterStateListener;
    .end local v4           #str:Ljava/lang/String;
    :cond_f
    const-string v4, ""

    .restart local v4       #str:Ljava/lang/String;
    goto :goto_c

    .line 363
    .end local v4           #str:Ljava/lang/String;
    :sswitch_9
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    const/4 v6, 0x0

    #setter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->registrationStatus:Z
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$402(Lcom/samsung/commonimsservice/SamsungAPCommonService;Z)Z

    .line 365
    if-eqz p5, :cond_11

    .line 366
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, p5}, Ljava/lang/String;-><init>([B)V

    .line 370
    .restart local v4       #str:Ljava/lang/String;
    :goto_e
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_f
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSRegListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$500(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 371
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSRegListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$500(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSRegisterStateListener;

    .line 372
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSRegisterStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$000(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 373
    if-eqz v3, :cond_10

    .line 374
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$000(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 375
    const-string v5, "Registration Failed"

    invoke-interface {v3, v4, p3, v5}, Lcom/samsung/commonimsservice/IIMSRegisterStateListener;->onRegistrationFailed(Ljava/lang/String;ILjava/lang/String;)V

    .line 370
    :cond_10
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 368
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSRegisterStateListener;
    .end local v4           #str:Ljava/lang/String;
    :cond_11
    const-string v4, ""

    .restart local v4       #str:Ljava/lang/String;
    goto :goto_e

    .line 383
    .end local v4           #str:Ljava/lang/String;
    :sswitch_a
    if-eqz p5, :cond_13

    .line 384
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, p5}, Ljava/lang/String;-><init>([B)V

    .line 388
    .restart local v4       #str:Ljava/lang/String;
    :goto_10
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    const/4 v6, 0x0

    #setter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->registrationStatus:Z
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$402(Lcom/samsung/commonimsservice/SamsungAPCommonService;Z)Z

    .line 389
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_11
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSRegListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$500(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 390
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSRegListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$500(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSRegisterStateListener;

    .line 391
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSRegisterStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$000(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 392
    if-eqz v3, :cond_12

    .line 393
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$000(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 394
    const/4 v5, -0x2

    const/4 v6, -0x2

    invoke-static {v6}, Lcom/samsung/commonimsservice/IIMSCallStateListener$IMSErrorCode;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v4, v5, v6}, Lcom/samsung/commonimsservice/IIMSRegisterStateListener;->onRegistrationFailed(Ljava/lang/String;ILjava/lang/String;)V

    .line 389
    :cond_12
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 386
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSRegisterStateListener;
    .end local v4           #str:Ljava/lang/String;
    :cond_13
    const-string v4, ""

    .restart local v4       #str:Ljava/lang/String;
    goto :goto_10

    .line 402
    .end local v4           #str:Ljava/lang/String;
    :sswitch_b
    if-eqz p5, :cond_15

    .line 403
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, p5}, Ljava/lang/String;-><init>([B)V

    .line 407
    .restart local v4       #str:Ljava/lang/String;
    :goto_12
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    const/4 v6, 0x0

    #setter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->registrationStatus:Z
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$402(Lcom/samsung/commonimsservice/SamsungAPCommonService;Z)Z

    .line 408
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_13
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSRegListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$500(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 409
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSRegListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$500(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSRegisterStateListener;

    .line 410
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSRegisterStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$000(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 411
    if-eqz v3, :cond_14

    .line 412
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$000(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 413
    const/4 v5, -0x4

    const/4 v6, -0x4

    invoke-static {v6}, Lcom/samsung/commonimsservice/IIMSCallStateListener$IMSErrorCode;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v4, v5, v6}, Lcom/samsung/commonimsservice/IIMSRegisterStateListener;->onRegistrationFailed(Ljava/lang/String;ILjava/lang/String;)V

    .line 408
    :cond_14
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 405
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSRegisterStateListener;
    .end local v4           #str:Ljava/lang/String;
    :cond_15
    const-string v4, ""

    .restart local v4       #str:Ljava/lang/String;
    goto :goto_12

    .line 421
    .end local v4           #str:Ljava/lang/String;
    :sswitch_c
    if-eqz p5, :cond_17

    .line 422
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, p5}, Ljava/lang/String;-><init>([B)V

    .line 426
    .restart local v4       #str:Ljava/lang/String;
    :goto_14
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    const/4 v6, 0x0

    #setter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->registrationStatus:Z
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$402(Lcom/samsung/commonimsservice/SamsungAPCommonService;Z)Z

    .line 427
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_15
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSRegListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$500(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 428
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSRegListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$500(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSRegisterStateListener;

    .line 429
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSRegisterStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$000(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 430
    if-eqz v3, :cond_16

    .line 431
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$000(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 432
    const/16 v5, -0xc

    const/16 v6, -0xc

    invoke-static {v6}, Lcom/samsung/commonimsservice/IIMSCallStateListener$IMSErrorCode;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v4, v5, v6}, Lcom/samsung/commonimsservice/IIMSRegisterStateListener;->onRegistrationFailed(Ljava/lang/String;ILjava/lang/String;)V

    .line 427
    :cond_16
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 424
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSRegisterStateListener;
    .end local v4           #str:Ljava/lang/String;
    :cond_17
    const-string v4, ""

    .restart local v4       #str:Ljava/lang/String;
    goto :goto_14

    .line 440
    .end local v4           #str:Ljava/lang/String;
    :sswitch_d
    if-eqz p5, :cond_19

    .line 441
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, p5}, Ljava/lang/String;-><init>([B)V

    .line 445
    .restart local v4       #str:Ljava/lang/String;
    :goto_16
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    const/4 v6, 0x0

    #setter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->registrationStatus:Z
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$402(Lcom/samsung/commonimsservice/SamsungAPCommonService;Z)Z

    .line 446
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_17
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSRegListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$500(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 447
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSRegListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$500(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSRegisterStateListener;

    .line 448
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSRegisterStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$000(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 449
    if-eqz v3, :cond_18

    .line 450
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$000(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 451
    const/4 v5, -0x4

    const/4 v6, -0x4

    invoke-static {v6}, Lcom/samsung/commonimsservice/IIMSCallStateListener$IMSErrorCode;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v4, v5, v6}, Lcom/samsung/commonimsservice/IIMSRegisterStateListener;->onRegistrationFailed(Ljava/lang/String;ILjava/lang/String;)V

    .line 446
    :cond_18
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 443
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSRegisterStateListener;
    .end local v4           #str:Ljava/lang/String;
    :cond_19
    const-string v4, ""

    .restart local v4       #str:Ljava/lang/String;
    goto :goto_16

    .line 459
    .end local v4           #str:Ljava/lang/String;
    :sswitch_e
    if-eqz p5, :cond_1b

    .line 460
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, p5}, Ljava/lang/String;-><init>([B)V

    .line 464
    .restart local v4       #str:Ljava/lang/String;
    :goto_18
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    const/4 v6, 0x0

    #setter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->registrationStatus:Z
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$402(Lcom/samsung/commonimsservice/SamsungAPCommonService;Z)Z

    .line 465
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_19
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSRegListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$500(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 466
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSRegListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$500(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSRegisterStateListener;

    .line 467
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSRegisterStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$000(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 468
    if-eqz v3, :cond_1a

    .line 469
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$000(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 470
    const/4 v5, -0x5

    const/4 v6, -0x5

    invoke-static {v6}, Lcom/samsung/commonimsservice/IIMSCallStateListener$IMSErrorCode;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v4, v5, v6}, Lcom/samsung/commonimsservice/IIMSRegisterStateListener;->onRegistrationFailed(Ljava/lang/String;ILjava/lang/String;)V

    .line 465
    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    .line 462
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSRegisterStateListener;
    .end local v4           #str:Ljava/lang/String;
    :cond_1b
    const-string v4, ""

    .restart local v4       #str:Ljava/lang/String;
    goto :goto_18

    .line 477
    .end local v4           #str:Ljava/lang/String;
    :sswitch_f
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    const/4 v6, 0x0

    invoke-virtual {v5, p3, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->setSpeakerMode(IZ)V

    .line 478
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_1a
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$600(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 479
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$600(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 480
    .local v3, listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$000(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 481
    if-eqz v3, :cond_1c

    .line 482
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$000(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 483
    invoke-interface {v3, p3}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onRingingBack(I)V

    .line 478
    :cond_1c
    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    .line 490
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_10
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    const/4 v6, 0x0

    invoke-virtual {v5, p3, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->setSpeakerMode(IZ)V

    .line 491
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_1b
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$600(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 492
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$600(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 493
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$000(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 494
    if-eqz v3, :cond_1d

    .line 495
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$000(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 496
    invoke-interface {v3, p3}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onEarlyMediaStart(I)V

    .line 491
    :cond_1d
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    .line 503
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_11
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_1c
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$600(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 504
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$600(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 505
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$000(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 506
    if-eqz v3, :cond_1e

    .line 507
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$000(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 508
    invoke-interface {v3, p3}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onCallEnded(I)V

    .line 503
    :cond_1e
    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    .line 515
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_12
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_1d
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$600(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 516
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$600(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 517
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$000(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 518
    if-eqz v3, :cond_1f

    .line 519
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$000(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 520
    invoke-interface {v3, p3}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onCalling(I)V

    .line 515
    :cond_1f
    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    .line 528
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_13
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_1e
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$600(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 529
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$600(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 530
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$000(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 531
    if-eqz v3, :cond_20

    .line 532
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$000(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 533
    invoke-interface {v3, p3}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onCallEnded(I)V

    .line 528
    :cond_20
    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    .line 540
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_14
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_1f
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$600(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 541
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$600(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 542
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    if-eqz v3, :cond_21

    .line 543
    const/16 v5, -0x1a

    const-string v6, "Bad Request"

    invoke-interface {v3, p3, v5, v6}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onError(IILjava/lang/String;)V

    .line 540
    :cond_21
    add-int/lit8 v2, v2, 0x1

    goto :goto_1f

    .line 550
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_15
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_20
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$600(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 551
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$600(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 552
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    if-eqz v3, :cond_22

    .line 553
    const/16 v5, -0x1b

    const-string v6, "Bad Request"

    invoke-interface {v3, p3, v5, v6}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onError(IILjava/lang/String;)V

    .line 550
    :cond_22
    add-int/lit8 v2, v2, 0x1

    goto :goto_20

    .line 560
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_16
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_21
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$600(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 561
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$600(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 562
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    if-eqz v3, :cond_23

    .line 563
    const/16 v5, -0x1c

    const-string v6, "Bad Request"

    invoke-interface {v3, p3, v5, v6}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onError(IILjava/lang/String;)V

    .line 560
    :cond_23
    add-int/lit8 v2, v2, 0x1

    goto :goto_21

    .line 570
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_17
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_22
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$600(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 571
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$600(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 572
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    if-eqz v3, :cond_24

    .line 573
    const/16 v5, -0x1d

    const-string v6, "Bad Request"

    invoke-interface {v3, p3, v5, v6}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onError(IILjava/lang/String;)V

    .line 570
    :cond_24
    add-int/lit8 v2, v2, 0x1

    goto :goto_22

    .line 580
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_18
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_23
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$600(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 581
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$600(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 582
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    if-eqz v3, :cond_25

    .line 583
    const/16 v5, -0x1e

    const-string v6, "Bad Request"

    invoke-interface {v3, p3, v5, v6}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onError(IILjava/lang/String;)V

    .line 580
    :cond_25
    add-int/lit8 v2, v2, 0x1

    goto :goto_23

    .line 590
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_19
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_24
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$600(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 591
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$600(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 592
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    if-eqz v3, :cond_26

    .line 593
    const/16 v5, -0x26

    const-string v6, "Bad Request"

    invoke-interface {v3, p3, v5, v6}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onError(IILjava/lang/String;)V

    .line 590
    :cond_26
    add-int/lit8 v2, v2, 0x1

    goto :goto_24

    .line 600
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_1a
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_25
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$600(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 601
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$600(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 602
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    if-eqz v3, :cond_27

    .line 603
    const/16 v5, -0x1f

    const-string v6, "Bad Request"

    invoke-interface {v3, p3, v5, v6}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onError(IILjava/lang/String;)V

    .line 600
    :cond_27
    add-int/lit8 v2, v2, 0x1

    goto :goto_25

    .line 610
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_1b
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_26
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$600(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 611
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$600(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 612
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    if-eqz v3, :cond_28

    .line 613
    const/16 v5, -0x20

    const-string v6, "Bad Request"

    invoke-interface {v3, p3, v5, v6}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onError(IILjava/lang/String;)V

    .line 610
    :cond_28
    add-int/lit8 v2, v2, 0x1

    goto :goto_26

    .line 620
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_1c
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_27
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$600(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 621
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$600(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 622
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    if-eqz v3, :cond_29

    .line 623
    const/16 v5, 0x19f

    const-string v6, "Bad Request"

    invoke-interface {v3, p3, v5, v6}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onError(IILjava/lang/String;)V

    .line 620
    :cond_29
    add-int/lit8 v2, v2, 0x1

    goto :goto_27

    .line 630
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_1d
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_28
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$600(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 631
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$600(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 632
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    if-eqz v3, :cond_2a

    .line 633
    const/16 v5, -0x21

    const-string v6, "Bad Request"

    invoke-interface {v3, p3, v5, v6}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onError(IILjava/lang/String;)V

    .line 630
    :cond_2a
    add-int/lit8 v2, v2, 0x1

    goto :goto_28

    .line 640
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_1e
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_29
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$600(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 641
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$600(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 642
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    if-eqz v3, :cond_2b

    .line 643
    const/16 v5, -0x19

    const-string v6, "Bad Request"

    invoke-interface {v3, p3, v5, v6}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onError(IILjava/lang/String;)V

    .line 640
    :cond_2b
    add-int/lit8 v2, v2, 0x1

    goto :goto_29

    .line 654
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_1f
    const/4 v1, 0x0

    .line 656
    .local v1, errCode:I
    const/16 v5, 0x162

    if-ne p2, v5, :cond_2e

    .line 657
    const/16 v1, -0x28

    .line 669
    :cond_2c
    :goto_2a
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_2b
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$600(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 670
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$600(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 671
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    if-eqz v3, :cond_2d

    .line 672
    const-string v5, "Call failed"

    invoke-interface {v3, p3, v1, v5}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onError(IILjava/lang/String;)V

    .line 669
    :cond_2d
    add-int/lit8 v2, v2, 0x1

    goto :goto_2b

    .line 659
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :cond_2e
    const/16 v5, 0x163

    if-ne p2, v5, :cond_2f

    .line 660
    const/16 v1, -0x29

    goto :goto_2a

    .line 662
    :cond_2f
    const/16 v5, 0x160

    if-ne p2, v5, :cond_30

    .line 664
    const/16 v1, -0x2b

    goto :goto_2a

    .line 666
    :cond_30
    const/16 v5, 0x161

    if-ne p2, v5, :cond_2c

    .line 667
    const/16 v1, -0x2a

    goto :goto_2a

    .line 679
    .end local v1           #errCode:I
    :sswitch_20
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_2c
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$600(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 680
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$600(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 681
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    if-eqz v3, :cond_31

    .line 682
    const/16 v5, -0x18

    const-string v6, "Bad Request"

    invoke-interface {v3, p3, v5, v6}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onError(IILjava/lang/String;)V

    .line 679
    :cond_31
    add-int/lit8 v2, v2, 0x1

    goto :goto_2c

    .line 689
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_21
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_2d
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$600(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 690
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$600(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 691
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    if-eqz v3, :cond_32

    .line 692
    const/16 v5, -0x17

    const-string v6, "Bad Request"

    invoke-interface {v3, p3, v5, v6}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onError(IILjava/lang/String;)V

    .line 689
    :cond_32
    add-int/lit8 v2, v2, 0x1

    goto :goto_2d

    .line 699
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_22
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_2e
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$600(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 700
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$600(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 701
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    if-eqz v3, :cond_33

    .line 702
    const/16 v5, -0x25

    const-string v6, "Bad Request"

    invoke-interface {v3, p3, v5, v6}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onError(IILjava/lang/String;)V

    .line 699
    :cond_33
    add-int/lit8 v2, v2, 0x1

    goto :goto_2e

    .line 709
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_23
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_2f
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$600(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 710
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$600(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 711
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    if-eqz v3, :cond_34

    .line 712
    const/16 v5, -0x16

    const-string v6, "Bad Request"

    invoke-interface {v3, p3, v5, v6}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onError(IILjava/lang/String;)V

    .line 709
    :cond_34
    add-int/lit8 v2, v2, 0x1

    goto :goto_2f

    .line 719
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_24
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_30
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$600(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 720
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$600(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 721
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    if-eqz v3, :cond_35

    .line 722
    const/16 v5, -0x15

    const-string v6, "Bad Request"

    invoke-interface {v3, p3, v5, v6}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onError(IILjava/lang/String;)V

    .line 719
    :cond_35
    add-int/lit8 v2, v2, 0x1

    goto :goto_30

    .line 729
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_25
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_31
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$600(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 730
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$600(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 731
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    if-eqz v3, :cond_36

    .line 732
    const/16 v5, -0x14

    const-string v6, "Bad Request"

    invoke-interface {v3, p3, v5, v6}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onError(IILjava/lang/String;)V

    .line 729
    :cond_36
    add-int/lit8 v2, v2, 0x1

    goto :goto_31

    .line 739
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_26
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_32
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$600(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 740
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$600(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 741
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    if-eqz v3, :cond_37

    .line 742
    const/16 v5, -0x13

    const-string v6, "Bad Request"

    invoke-interface {v3, p3, v5, v6}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onError(IILjava/lang/String;)V

    .line 739
    :cond_37
    add-int/lit8 v2, v2, 0x1

    goto :goto_32

    .line 749
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_27
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_33
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$600(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 750
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$600(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 751
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    if-eqz v3, :cond_38

    .line 752
    const/16 v5, -0x12

    const-string v6, "Bad Request"

    invoke-interface {v3, p3, v5, v6}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onError(IILjava/lang/String;)V

    .line 749
    :cond_38
    add-int/lit8 v2, v2, 0x1

    goto :goto_33

    .line 759
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_28
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_34
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$600(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 760
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$600(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 761
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    if-eqz v3, :cond_39

    .line 762
    const/16 v5, -0x11

    const-string v6, "Bad Request"

    invoke-interface {v3, p3, v5, v6}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onError(IILjava/lang/String;)V

    .line 759
    :cond_39
    add-int/lit8 v2, v2, 0x1

    goto :goto_34

    .line 769
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_29
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_35
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$600(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 770
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$600(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 771
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    if-eqz v3, :cond_3a

    .line 772
    const/16 v5, -0x10

    const-string v6, "Bad Request"

    invoke-interface {v3, p3, v5, v6}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onError(IILjava/lang/String;)V

    .line 769
    :cond_3a
    add-int/lit8 v2, v2, 0x1

    goto :goto_35

    .line 779
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_2a
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->onBadRequest(I)V
    invoke-static {v5, p3}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$1000(Lcom/samsung/commonimsservice/SamsungAPCommonService;I)V

    goto/16 :goto_0

    .line 784
    :sswitch_2b
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_36
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$600(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 785
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$600(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 786
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$000(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 787
    if-eqz v3, :cond_3b

    .line 788
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$000(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 789
    invoke-interface {v3, p3}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onCallBusy(I)V

    .line 784
    :cond_3b
    add-int/lit8 v2, v2, 0x1

    goto :goto_36

    .line 797
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_2c
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_37
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$600(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 798
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$600(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 799
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$000(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 800
    if-eqz v3, :cond_3c

    .line 801
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$000(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 802
    const/4 v5, -0x7

    const-string v6, "Called party not in LTE area"

    invoke-interface {v3, p3, v5, v6}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onError(IILjava/lang/String;)V

    .line 797
    :cond_3c
    add-int/lit8 v2, v2, 0x1

    goto :goto_37

    .line 809
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_2d
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_38
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$600(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 810
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$600(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 811
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$000(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 812
    if-eqz v3, :cond_3d

    .line 813
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$000(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 814
    const/4 v5, -0x6

    const-string v6, "Called party does not exist"

    invoke-interface {v3, p3, v5, v6}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onError(IILjava/lang/String;)V

    .line 809
    :cond_3d
    add-int/lit8 v2, v2, 0x1

    goto :goto_38

    .line 822
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_2e
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_39
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$600(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 823
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$600(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 824
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$000(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 825
    if-eqz v3, :cond_3e

    .line 826
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$000(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 827
    const/4 v5, -0x5

    const-string v6, "Call Failed"

    invoke-interface {v3, p3, v5, v6}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onError(IILjava/lang/String;)V

    .line 822
    :cond_3e
    add-int/lit8 v2, v2, 0x1

    goto :goto_39

    .line 834
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_2f
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_3a
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$600(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 835
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$600(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 836
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$000(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 837
    if-eqz v3, :cond_3f

    .line 838
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$000(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 839
    const/16 v5, -0x27

    const-string v6, "Call Failed"

    invoke-interface {v3, p3, v5, v6}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onError(IILjava/lang/String;)V

    .line 834
    :cond_3f
    add-int/lit8 v2, v2, 0x1

    goto :goto_3a

    .line 847
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_30
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_3b
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$600(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 848
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$600(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 849
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$000(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 850
    if-eqz v3, :cond_40

    .line 851
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$000(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 852
    const/4 v5, -0x5

    const-string v6, "Call Failed"

    invoke-interface {v3, p3, v5, v6}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onError(IILjava/lang/String;)V

    .line 847
    :cond_40
    add-int/lit8 v2, v2, 0x1

    goto :goto_3b

    .line 859
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_31
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_3c
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$600(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 860
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$600(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 861
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$000(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 862
    if-eqz v3, :cond_41

    .line 863
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$000(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 864
    const/16 v5, 0x19f

    const-string v6, "Called party does not support media"

    invoke-interface {v3, p3, v5, v6}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onError(IILjava/lang/String;)V

    .line 859
    :cond_41
    add-int/lit8 v2, v2, 0x1

    goto :goto_3c

    .line 871
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_32
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_3d
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$600(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 872
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$600(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 873
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$000(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 874
    if-eqz v3, :cond_42

    .line 875
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$000(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 876
    invoke-interface {v3, p3}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onCallHeld(I)V

    .line 871
    :cond_42
    add-int/lit8 v2, v2, 0x1

    goto :goto_3d

    .line 883
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_33
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_3e
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$600(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 884
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$600(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 885
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$000(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 886
    if-eqz v3, :cond_43

    .line 887
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$000(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 888
    invoke-interface {v3, p3}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onCallResumed(I)V

    .line 883
    :cond_43
    add-int/lit8 v2, v2, 0x1

    goto :goto_3e

    .line 898
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_34
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_3f
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$600(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 899
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$600(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 900
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$000(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 901
    if-eqz v3, :cond_44

    .line 902
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$000(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 903
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->getCallType(II)I
    invoke-static {v5, p1, p4}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;II)I

    move-result v5

    invoke-interface {v3, p3, v5, p6}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onCallEstablished(IILcom/sec/android/internal/ims/IIMSParams;)V

    .line 898
    :cond_44
    add-int/lit8 v2, v2, 0x1

    goto :goto_3f

    .line 910
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_35
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_40
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$600(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 911
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$600(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 912
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$000(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 913
    if-eqz v3, :cond_45

    .line 914
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$000(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 915
    invoke-interface {v3, p3}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onCalling(I)V

    .line 910
    :cond_45
    add-int/lit8 v2, v2, 0x1

    goto :goto_40

    .line 922
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_36
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_41
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$600(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 923
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$600(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 924
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$000(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 925
    if-eqz v3, :cond_46

    .line 926
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$000(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 927
    const/4 v5, 0x2

    invoke-interface {v3, p3, v5, p5}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onChangeRequest(II[B)V

    .line 922
    :cond_46
    add-int/lit8 v2, v2, 0x1

    goto :goto_41

    .line 934
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_37
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_42
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$600(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 935
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$600(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 936
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$000(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 937
    if-eqz v3, :cond_47

    .line 938
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$000(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 939
    const/4 v5, 0x3

    invoke-interface {v3, p3, v5, p5}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onChangeRequest(II[B)V

    .line 934
    :cond_47
    add-int/lit8 v2, v2, 0x1

    goto :goto_42

    .line 946
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_38
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_43
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$600(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 947
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$600(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 948
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$000(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 949
    if-eqz v3, :cond_48

    .line 950
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$000(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 951
    const/4 v5, 0x5

    invoke-interface {v3, p3, v5, p5}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onChangeRequest(II[B)V

    .line 946
    :cond_48
    add-int/lit8 v2, v2, 0x1

    goto :goto_43

    .line 958
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_39
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_44
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$600(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 959
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$600(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 960
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$000(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 961
    if-eqz v3, :cond_49

    .line 962
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$000(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 963
    const/4 v5, 0x3

    invoke-interface {v3, p3, v5, p5}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onChangeRequest(II[B)V

    .line 958
    :cond_49
    add-int/lit8 v2, v2, 0x1

    goto :goto_44

    .line 970
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_3a
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_45
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$600(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 971
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$600(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 972
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$000(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 973
    if-eqz v3, :cond_4a

    .line 974
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$000(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 975
    const/4 v5, 0x5

    invoke-interface {v3, p3, v5, p5}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onChangeRequest(II[B)V

    .line 970
    :cond_4a
    add-int/lit8 v2, v2, 0x1

    goto :goto_45

    .line 982
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_3b
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_46
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$600(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 983
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$600(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 984
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$000(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 985
    if-eqz v3, :cond_4b

    .line 986
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$000(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 987
    const/4 v5, 0x5

    invoke-interface {v3, p3, v5, p6}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onCallEstablished(IILcom/sec/android/internal/ims/IIMSParams;)V

    .line 982
    :cond_4b
    add-int/lit8 v2, v2, 0x1

    goto :goto_46

    .line 994
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_3c
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_47
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$600(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 995
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$600(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 996
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$000(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 997
    if-eqz v3, :cond_4c

    .line 998
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$000(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 999
    const/4 v5, 0x5

    invoke-interface {v3, p3, v5, p6}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onCallEstablished(IILcom/sec/android/internal/ims/IIMSParams;)V

    .line 994
    :cond_4c
    add-int/lit8 v2, v2, 0x1

    goto :goto_47

    .line 1006
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_3d
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_48
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$600(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 1007
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$600(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 1008
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$000(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 1009
    if-eqz v3, :cond_4d

    .line 1010
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$000(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 1011
    const/4 v5, 0x2

    invoke-interface {v3, p3, v5, p6}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onCallEstablished(IILcom/sec/android/internal/ims/IIMSParams;)V

    .line 1006
    :cond_4d
    add-int/lit8 v2, v2, 0x1

    goto :goto_48

    .line 1018
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_3e
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_49
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$600(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 1019
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$600(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 1020
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$000(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 1021
    if-eqz v3, :cond_4e

    .line 1022
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$000(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 1023
    const/4 v5, 0x3

    invoke-interface {v3, p3, v5, p6}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onCallEstablished(IILcom/sec/android/internal/ims/IIMSParams;)V

    .line 1018
    :cond_4e
    add-int/lit8 v2, v2, 0x1

    goto :goto_49

    .line 1030
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_3f
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_4a
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$600(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 1031
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$600(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 1032
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$000(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 1033
    if-eqz v3, :cond_4f

    .line 1034
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$000(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 1035
    const/4 v5, 0x3

    invoke-interface {v3, p3, v5, p6}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onCallEstablished(IILcom/sec/android/internal/ims/IIMSParams;)V

    .line 1030
    :cond_4f
    add-int/lit8 v2, v2, 0x1

    goto :goto_4a

    .line 1042
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_40
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_4b
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$600(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 1043
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$600(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 1044
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$000(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 1045
    if-eqz v3, :cond_50

    .line 1046
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$000(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 1047
    const/4 v5, 0x2

    invoke-interface {v3, p3, v5, p5}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onChangeRequest(II[B)V

    .line 1042
    :cond_50
    add-int/lit8 v2, v2, 0x1

    goto :goto_4b

    .line 1054
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_41
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_4c
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$600(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 1055
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$600(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 1056
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$000(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 1057
    if-eqz v3, :cond_51

    .line 1058
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$000(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 1059
    const/4 v5, 0x2

    invoke-interface {v3, p3, v5, p6}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onCallEstablished(IILcom/sec/android/internal/ims/IIMSParams;)V

    .line 1054
    :cond_51
    add-int/lit8 v2, v2, 0x1

    goto :goto_4c

    .line 1066
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_42
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_4d
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$600(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 1067
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$600(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 1068
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$000(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 1069
    if-eqz v3, :cond_52

    .line 1070
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$000(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 1071
    const/4 v5, 0x3

    invoke-interface {v3, p3, v5, p5}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onChangeRequest(II[B)V

    .line 1066
    :cond_52
    add-int/lit8 v2, v2, 0x1

    goto :goto_4d

    .line 1078
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_43
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_4e
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$600(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 1079
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$600(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 1080
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$000(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 1081
    if-eqz v3, :cond_53

    .line 1082
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$000(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 1083
    const/4 v5, 0x3

    invoke-interface {v3, p3, v5, p5}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onChangeRequest(II[B)V

    .line 1078
    :cond_53
    add-int/lit8 v2, v2, 0x1

    goto :goto_4e

    .line 1090
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_44
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_4f
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$600(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 1091
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$600(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 1092
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$000(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 1093
    if-eqz v3, :cond_54

    .line 1094
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$000(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 1095
    invoke-interface {v3, p3}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onVideoHeld(I)V

    .line 1090
    :cond_54
    add-int/lit8 v2, v2, 0x1

    goto :goto_4f

    .line 1102
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_45
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_50
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$600(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 1103
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$600(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 1104
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$000(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 1105
    if-eqz v3, :cond_55

    .line 1106
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$000(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 1107
    invoke-interface {v3, p3}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onVideoResumed(I)V

    .line 1102
    :cond_55
    add-int/lit8 v2, v2, 0x1

    goto :goto_50

    .line 1114
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_46
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_51
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$600(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 1115
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$600(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 1116
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$000(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 1117
    if-eqz v3, :cond_56

    .line 1118
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$000(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 1119
    const/16 v5, 0x2bc

    const-string v6, "Upgrade/downgrade rejected"

    invoke-interface {v3, p3, v5, v6}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onError(IILjava/lang/String;)V

    .line 1114
    :cond_56
    add-int/lit8 v2, v2, 0x1

    goto :goto_51

    .line 1125
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_47
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_52
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$600(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 1126
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$600(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 1127
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$000(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 1128
    if-eqz v3, :cond_57

    .line 1129
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$000(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 1130
    const/16 v5, 0x2bd

    const-string v6, "Upgrade/downgrade rejected"

    invoke-interface {v3, p3, v5, v6}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onError(IILjava/lang/String;)V

    .line 1125
    :cond_57
    add-int/lit8 v2, v2, 0x1

    goto :goto_52

    .line 1137
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_48
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_53
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$600(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 1138
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$600(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 1139
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$000(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 1140
    if-eqz v3, :cond_58

    .line 1141
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$000(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 1142
    invoke-interface {v3, p3}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onVideoAvailable(I)V

    .line 1137
    :cond_58
    add-int/lit8 v2, v2, 0x1

    goto :goto_53

    .line 1149
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :cond_59
    const-string v5, "SamsungAPCommonService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Event listener invalid app type ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 180
    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_0
    .end packed-switch

    .line 214
    :sswitch_data_0
    .sparse-switch
        0x66 -> :sswitch_8
        0x67 -> :sswitch_b
        0x68 -> :sswitch_9
        0x6d -> :sswitch_e
        0x6e -> :sswitch_c
        0x6f -> :sswitch_a
        0x70 -> :sswitch_d
        0xca -> :sswitch_7
        0xcb -> :sswitch_35
        0xcc -> :sswitch_12
        0xcd -> :sswitch_f
        0xcf -> :sswitch_13
        0xd0 -> :sswitch_34
        0xd1 -> :sswitch_11
        0xd2 -> :sswitch_27
        0xd4 -> :sswitch_29
        0xd5 -> :sswitch_2a
        0xd6 -> :sswitch_26
        0xd7 -> :sswitch_2d
        0xd8 -> :sswitch_2c
        0xd9 -> :sswitch_2b
        0xda -> :sswitch_30
        0xdb -> :sswitch_2e
        0xde -> :sswitch_19
        0xe1 -> :sswitch_28
        0xe4 -> :sswitch_14
        0xe5 -> :sswitch_15
        0xe6 -> :sswitch_16
        0xe7 -> :sswitch_17
        0xea -> :sswitch_18
        0xeb -> :sswitch_2f
        0xed -> :sswitch_1a
        0xee -> :sswitch_31
        0x109 -> :sswitch_32
        0x10a -> :sswitch_33
        0x12a -> :sswitch_3
        0x12b -> :sswitch_4
        0x12c -> :sswitch_1
        0x12d -> :sswitch_2
        0x12e -> :sswitch_48
        0x12f -> :sswitch_1e
        0x130 -> :sswitch_20
        0x131 -> :sswitch_21
        0x132 -> :sswitch_1c
        0x133 -> :sswitch_25
        0x134 -> :sswitch_23
        0x135 -> :sswitch_1d
        0x136 -> :sswitch_2c
        0x137 -> :sswitch_1b
        0x138 -> :sswitch_6
        0x139 -> :sswitch_5
        0x13a -> :sswitch_22
        0x13d -> :sswitch_24
        0x13e -> :sswitch_2e
        0x13f -> :sswitch_34
        0x142 -> :sswitch_34
        0x147 -> :sswitch_34
        0x14b -> :sswitch_36
        0x14c -> :sswitch_38
        0x14d -> :sswitch_3d
        0x14e -> :sswitch_3c
        0x14f -> :sswitch_46
        0x150 -> :sswitch_47
        0x151 -> :sswitch_37
        0x152 -> :sswitch_40
        0x153 -> :sswitch_39
        0x154 -> :sswitch_3e
        0x155 -> :sswitch_3f
        0x156 -> :sswitch_41
        0x157 -> :sswitch_3a
        0x158 -> :sswitch_3b
        0x159 -> :sswitch_42
        0x15a -> :sswitch_44
        0x15b -> :sswitch_43
        0x15c -> :sswitch_45
        0x15f -> :sswitch_0
        0x160 -> :sswitch_1f
        0x161 -> :sswitch_1f
        0x162 -> :sswitch_1f
        0x163 -> :sswitch_1f
        0x164 -> :sswitch_10
    .end sparse-switch
.end method

.method public notifyEvent(IIII[I[Ljava/lang/String;)V
    .locals 5
    .parameter "appType"
    .parameter "eventType"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "participantList"
    .parameter "uriList"

    .prologue
    .line 1154
    iget-object v2, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IMS event received EventType["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "AppType ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] \n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Arg1 ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] \n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Arg2 ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]\n "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$000(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 1156
    packed-switch p2, :pswitch_data_0

    .line 1170
    :cond_0
    return-void

    .line 1158
    :pswitch_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v2}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$600(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 1159
    iget-object v2, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v2}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$600(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 1160
    .local v1, listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    iget-object v2, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Listener["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$000(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 1161
    if-eqz v1, :cond_1

    .line 1162
    iget-object v2, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Notifying listener["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$000(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 1163
    invoke-interface {v1, p3, p5, p6}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onNotifyReceived(I[I[Ljava/lang/String;)V

    .line 1158
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1156
    nop

    :pswitch_data_0
    .packed-switch 0x145
        :pswitch_0
    .end packed-switch
.end method
