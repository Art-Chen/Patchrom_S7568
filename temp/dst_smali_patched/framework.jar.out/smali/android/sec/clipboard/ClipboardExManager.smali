.class public Landroid/sec/clipboard/ClipboardExManager;
.super Ljava/lang/Object;
.source "ClipboardExManager.java"


# static fields
.field private static sService:Landroid/sec/clipboard/IClipboardService;


# instance fields
.field private final FAIL_SET_DATA:I

.field private final PROTECTED_DATA_MAX:I

.field private final SUCCESS_SET_DATA:I

.field private final _UNFORMAT:I

.field private mContext:Landroid/content/Context;

.field private mFormatid:I

.field private mPasteEvent:Landroid/sec/clipboard/IClipboardDataPasteEvent;

.field private mRegInterface:Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;

.field private final mSetDataHandler:Landroid/os/Handler;

.field private final tag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    sput-object v0, Landroid/sec/clipboard/ClipboardExManager;->sService:Landroid/sec/clipboard/IClipboardService;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 3
    .parameter "context"
    .parameter "handler"

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ClipboardExManager"

    iput-object v0, p0, Landroid/sec/clipboard/ClipboardExManager;->tag:Ljava/lang/String;

    iput-object v1, p0, Landroid/sec/clipboard/ClipboardExManager;->mRegInterface:Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;

    iput v2, p0, Landroid/sec/clipboard/ClipboardExManager;->_UNFORMAT:I

    const/4 v0, 0x0

    iput v0, p0, Landroid/sec/clipboard/ClipboardExManager;->SUCCESS_SET_DATA:I

    const/4 v0, 0x1

    iput v0, p0, Landroid/sec/clipboard/ClipboardExManager;->FAIL_SET_DATA:I

    const/4 v0, 0x2

    iput v0, p0, Landroid/sec/clipboard/ClipboardExManager;->PROTECTED_DATA_MAX:I

    iput v2, p0, Landroid/sec/clipboard/ClipboardExManager;->mFormatid:I

    iput-object v1, p0, Landroid/sec/clipboard/ClipboardExManager;->mPasteEvent:Landroid/sec/clipboard/IClipboardDataPasteEvent;

    iput-object v1, p0, Landroid/sec/clipboard/ClipboardExManager;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/sec/clipboard/ClipboardExManager$1;

    invoke-direct {v0, p0}, Landroid/sec/clipboard/ClipboardExManager$1;-><init>(Landroid/sec/clipboard/ClipboardExManager;)V

    iput-object v0, p0, Landroid/sec/clipboard/ClipboardExManager;->mSetDataHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Landroid/sec/clipboard/ClipboardExManager;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/sec/clipboard/ClipboardExManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100()Landroid/sec/clipboard/IClipboardService;
    .locals 1

    .prologue
    sget-object v0, Landroid/sec/clipboard/ClipboardExManager;->sService:Landroid/sec/clipboard/IClipboardService;

    return-object v0
.end method

.method static synthetic access$200(Landroid/sec/clipboard/ClipboardExManager;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/sec/clipboard/ClipboardExManager;->mSetDataHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private static getService()Landroid/sec/clipboard/IClipboardService;
    .locals 3

    .prologue
    sget-object v1, Landroid/sec/clipboard/ClipboardExManager;->sService:Landroid/sec/clipboard/IClipboardService;

    if-eqz v1, :cond_0

    sget-object v1, Landroid/sec/clipboard/ClipboardExManager;->sService:Landroid/sec/clipboard/IClipboardService;

    .local v0, b:Landroid/os/IBinder;
    :goto_0
    return-object v1

    .end local v0           #b:Landroid/os/IBinder;
    :cond_0
    const-string v1, "clipboardEx"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .restart local v0       #b:Landroid/os/IBinder;
    invoke-static {v0}, Landroid/sec/clipboard/IClipboardService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/sec/clipboard/IClipboardService;

    move-result-object v1

    sput-object v1, Landroid/sec/clipboard/ClipboardExManager;->sService:Landroid/sec/clipboard/IClipboardService;

    sget-object v1, Landroid/sec/clipboard/ClipboardExManager;->sService:Landroid/sec/clipboard/IClipboardService;

    if-nez v1, :cond_1

    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "ClipboardServiceEx"

    const-string v2, "Had failed to obtaining clipboardEx service."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    sget-object v1, Landroid/sec/clipboard/ClipboardExManager;->sService:Landroid/sec/clipboard/IClipboardService;

    goto :goto_0
.end method


# virtual methods
.method public AddClipboardFormatListener(Landroid/sec/clipboard/IClipboardFormatListener;)Z
    .locals 5
    .parameter "listener"

    .prologue
    :try_start_0
    invoke-static {}, Landroid/sec/clipboard/ClipboardExManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v2

    if-nez v2, :cond_1

    sget-boolean v2, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "ClipboardServiceEx"

    const-string v3, "AddClipboardFormatListener - Fail~ Service is null."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    sget-object v2, Landroid/sec/clipboard/ClipboardExManager;->sService:Landroid/sec/clipboard/IClipboardService;

    invoke-interface {v2, p1}, Landroid/sec/clipboard/IClipboardService;->AddClipboardFormatListener(Landroid/sec/clipboard/IClipboardFormatListener;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .local v0, Result:Z
    goto :goto_0

    .end local v0           #Result:Z
    :catch_0
    move-exception v1

    .local v1, e:Landroid/os/RemoteException;
    sget-boolean v2, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v2, :cond_2

    const-string v2, "ClipboardServiceEx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AddClipboardFormatListener : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v0, 0x0

    .restart local v0       #Result:Z
    goto :goto_0
.end method

.method public RegistClipboardWorkingFormUiInterface(Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;)Z
    .locals 6
    .parameter "iRegInterface"

    .prologue
    const/4 v0, 0x0

    .local v0, Result:Z
    iget-object v3, p0, Landroid/sec/clipboard/ClipboardExManager;->mRegInterface:Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/sec/clipboard/ClipboardExManager;->mRegInterface:Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;

    if-eq v3, p1, :cond_1

    :cond_0
    iput-object p1, p0, Landroid/sec/clipboard/ClipboardExManager;->mRegInterface:Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;

    :cond_1
    invoke-static {}, Landroid/sec/clipboard/ClipboardExManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v3

    if-nez v3, :cond_3

    sget-boolean v3, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v3, :cond_2

    const-string v3, "ClipboardServiceEx"

    const-string v4, "RegistClipboardWorkingFormUiInterface - Fail~ Service is null."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    move v1, v0

    .end local v0           #Result:Z
    .local v1, Result:I
    :goto_0
    return v1

    .end local v1           #Result:I
    .restart local v0       #Result:Z
    :cond_3
    :try_start_0
    sget-object v3, Landroid/sec/clipboard/ClipboardExManager;->sService:Landroid/sec/clipboard/IClipboardService;

    iget-object v4, p0, Landroid/sec/clipboard/ClipboardExManager;->mRegInterface:Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;

    invoke-interface {v3, v4}, Landroid/sec/clipboard/IClipboardService;->RegistClipboardWorkingFormUiInterface(Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;)V

    sget-boolean v3, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v3, :cond_4

    const-string v3, "ClipboardServiceEx"

    const-string v4, "Regist ClipboardWorkingFormUiInterface - Success."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    const/4 v0, 0x1

    :cond_5
    :goto_1
    sget-boolean v3, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v3, :cond_6

    const-string v3, "ClipboardServiceEx"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RegistClipboardWorkingFormUiInterface - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    move v1, v0

    .restart local v1       #Result:I
    goto :goto_0

    .end local v1           #Result:I
    :catch_0
    move-exception v2

    .local v2, e:Landroid/os/RemoteException;
    sget-boolean v3, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v3, :cond_5

    const-string v3, "ClipboardServiceEx"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RegistClipboardWorkingFormUiInterface : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public RemoveClipboardFormatListener(Landroid/sec/clipboard/IClipboardFormatListener;)Z
    .locals 5
    .parameter "listener"

    .prologue
    :try_start_0
    invoke-static {}, Landroid/sec/clipboard/ClipboardExManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v2

    if-nez v2, :cond_1

    sget-boolean v2, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "ClipboardServiceEx"

    const-string v3, "RemoveClipboardFormatListener - Fail~ Service is null."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    sget-object v2, Landroid/sec/clipboard/ClipboardExManager;->sService:Landroid/sec/clipboard/IClipboardService;

    invoke-interface {v2, p1}, Landroid/sec/clipboard/IClipboardService;->RemoveClipboardFormatListener(Landroid/sec/clipboard/IClipboardFormatListener;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .local v0, Result:Z
    goto :goto_0

    .end local v0           #Result:Z
    :catch_0
    move-exception v1

    .local v1, e:Landroid/os/RemoteException;
    sget-boolean v2, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v2, :cond_2

    const-string v2, "ClipboardServiceEx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RemoveClipboardFormatListener : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v0, 0x0

    .restart local v0       #Result:Z
    goto :goto_0
.end method

.method public callPasteApplication(Landroid/sec/clipboard/data/ClipboardData;)V
    .locals 4
    .parameter "clipdata"

    .prologue
    iget-object v1, p0, Landroid/sec/clipboard/ClipboardExManager;->mPasteEvent:Landroid/sec/clipboard/IClipboardDataPasteEvent;

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Landroid/sec/clipboard/ClipboardExManager;->mPasteEvent:Landroid/sec/clipboard/IClipboardDataPasteEvent;

    invoke-interface {v1, p1}, Landroid/sec/clipboard/IClipboardDataPasteEvent;->onClipboardDataPaste(Landroid/sec/clipboard/data/ClipboardData;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "ClipboardServiceEx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Clipboard Service callPasteApplication error : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0           #e:Landroid/os/RemoteException;
    :cond_1
    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "ClipboardServiceEx"

    const-string v2, "Clipboard Service callPasteApplication mPasteEvent == null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public dismissUIDataDialog()V
    .locals 4

    .prologue
    :try_start_0
    invoke-static {}, Landroid/sec/clipboard/ClipboardExManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v1

    if-nez v1, :cond_1

    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "ClipboardServiceEx"

    const-string v2, "dismissUIDataDialog - Fail~ Service is null."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v1, Landroid/sec/clipboard/ClipboardExManager;->sService:Landroid/sec/clipboard/IClipboardService;

    invoke-interface {v1}, Landroid/sec/clipboard/IClipboardService;->dismissUIDataDialog()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "ClipboardServiceEx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dismissUIDataDialog(RemoteException): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getData(Landroid/content/Context;I)Landroid/sec/clipboard/data/ClipboardData;
    .locals 7
    .parameter "context"
    .parameter "formatid"

    .prologue
    const/4 v0, 0x0

    .local v0, data:Landroid/sec/clipboard/data/ClipboardData;
    :try_start_0
    invoke-static {}, Landroid/sec/clipboard/ClipboardExManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v4

    if-nez v4, :cond_1

    sget-boolean v4, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v4, :cond_0

    const-string v4, "ClipboardServiceEx"

    const-string v5, "getData - Fail~ Service is null."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move-object v1, v0

    .end local v0           #data:Landroid/sec/clipboard/data/ClipboardData;
    .local v1, data:Landroid/sec/clipboard/data/ClipboardData;
    :goto_0
    return-object v1

    .end local v1           #data:Landroid/sec/clipboard/data/ClipboardData;
    .restart local v0       #data:Landroid/sec/clipboard/data/ClipboardData;
    :cond_1
    iget v4, p0, Landroid/sec/clipboard/ClipboardExManager;->mFormatid:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_3

    move v3, p2

    .local v3, myFormat:I
    :goto_1
    sget-object v4, Landroid/sec/clipboard/ClipboardExManager;->sService:Landroid/sec/clipboard/IClipboardService;

    invoke-interface {v4, v3}, Landroid/sec/clipboard/IClipboardService;->GetClipboardData(I)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v0

    if-nez v0, :cond_2

    if-eqz p1, :cond_2

    const v4, 0x1040726

    const/4 v5, 0x0

    invoke-static {p1, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .end local v3           #myFormat:I
    :cond_2
    :goto_2
    move-object v1, v0

    .end local v0           #data:Landroid/sec/clipboard/data/ClipboardData;
    .restart local v1       #data:Landroid/sec/clipboard/data/ClipboardData;
    goto :goto_0

    .end local v1           #data:Landroid/sec/clipboard/data/ClipboardData;
    .restart local v0       #data:Landroid/sec/clipboard/data/ClipboardData;
    :cond_3
    iget v3, p0, Landroid/sec/clipboard/ClipboardExManager;->mFormatid:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .local v2, e:Landroid/os/RemoteException;
    sget-boolean v4, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v4, :cond_2

    const-string v4, "ClipboardServiceEx"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getData(int)(RemoteException):"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public getData(Landroid/content/Context;ILandroid/sec/clipboard/IClipboardDataPasteEvent;)Z
    .locals 5
    .parameter "context"
    .parameter "formatid"
    .parameter "clPasteEvent"

    .prologue
    const/4 v0, 0x1

    .local v0, Result:Z
    sget-boolean v2, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "ClipboardServiceEx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "call getData.."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :try_start_0
    invoke-static {}, Landroid/sec/clipboard/ClipboardExManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v2

    if-nez v2, :cond_2

    sget-boolean v2, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string v2, "ClipboardServiceEx"

    const-string v3, "getData - Fail~ Service is null."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_2
    iget-object v2, p0, Landroid/sec/clipboard/ClipboardExManager;->mPasteEvent:Landroid/sec/clipboard/IClipboardDataPasteEvent;

    if-nez v2, :cond_3

    sget-object v2, Landroid/sec/clipboard/ClipboardExManager;->sService:Landroid/sec/clipboard/IClipboardService;

    invoke-interface {v2, p2, p3}, Landroid/sec/clipboard/IClipboardService;->ShowUIClipboardData(ILandroid/sec/clipboard/IClipboardDataPasteEvent;)V

    :goto_1
    move v2, v0

    goto :goto_0

    :cond_3
    sget-object v2, Landroid/sec/clipboard/ClipboardExManager;->sService:Landroid/sec/clipboard/IClipboardService;

    iget v3, p0, Landroid/sec/clipboard/ClipboardExManager;->mFormatid:I

    iget-object v4, p0, Landroid/sec/clipboard/ClipboardExManager;->mPasteEvent:Landroid/sec/clipboard/IClipboardDataPasteEvent;

    invoke-interface {v2, v3, v4}, Landroid/sec/clipboard/IClipboardService;->ShowUIClipboardData(ILandroid/sec/clipboard/IClipboardDataPasteEvent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .local v1, e:Ljava/lang/Exception;
    sget-boolean v2, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v2, :cond_4

    const-string v2, "ClipboardServiceEx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getData(Context,int,IClipboardDataPasteEvent) : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getDataListSize()I
    .locals 5

    .prologue
    const/4 v1, -0x1

    .local v1, size:I
    :try_start_0
    invoke-static {}, Landroid/sec/clipboard/ClipboardExManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v3

    if-nez v3, :cond_1

    sget-boolean v3, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "ClipboardServiceEx"

    const-string v4, "getDataListSize - Fail~ Service is null."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move v2, v1

    .end local v1           #size:I
    .local v2, size:I
    :goto_0
    return v2

    .end local v2           #size:I
    .restart local v1       #size:I
    :cond_1
    sget-object v3, Landroid/sec/clipboard/ClipboardExManager;->sService:Landroid/sec/clipboard/IClipboardService;

    invoke-interface {v3}, Landroid/sec/clipboard/IClipboardService;->getDataSize()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_1
    move v2, v1

    .end local v1           #size:I
    .restart local v2       #size:I
    goto :goto_0

    .end local v2           #size:I
    .restart local v1       #size:I
    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public getFrozenState()Z
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/sec/clipboard/ClipboardExManager;->mPasteEvent:Landroid/sec/clipboard/IClipboardDataPasteEvent;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public hasData(Landroid/content/Context;I)Z
    .locals 6
    .parameter "context"
    .parameter "formatid"

    .prologue
    const/4 v0, 0x0

    .local v0, Result:Z
    :try_start_0
    invoke-static {}, Landroid/sec/clipboard/ClipboardExManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v4

    if-nez v4, :cond_1

    sget-boolean v4, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v4, :cond_0

    const-string v4, "ClipboardServiceEx"

    const-string v5, "hasData - Fail~ Service is null."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move v1, v0

    .end local v0           #Result:Z
    .local v1, Result:I
    :goto_0
    return v1

    .end local v1           #Result:I
    .restart local v0       #Result:Z
    :cond_1
    sget-object v4, Landroid/sec/clipboard/ClipboardExManager;->sService:Landroid/sec/clipboard/IClipboardService;

    invoke-interface {v4}, Landroid/sec/clipboard/IClipboardService;->getDataSize()I

    move-result v4

    if-lez v4, :cond_4

    iget v4, p0, Landroid/sec/clipboard/ClipboardExManager;->mFormatid:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_3

    move v3, p2

    .local v3, myFormat:I
    :goto_1
    sget-object v4, Landroid/sec/clipboard/ClipboardExManager;->sService:Landroid/sec/clipboard/IClipboardService;

    invoke-interface {v4, v3}, Landroid/sec/clipboard/IClipboardService;->GetClipboardData(I)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v4

    if-eqz v4, :cond_2

    const/4 v0, 0x1

    .end local v3           #myFormat:I
    :cond_2
    :goto_2
    move v1, v0

    .restart local v1       #Result:I
    goto :goto_0

    .end local v1           #Result:I
    :cond_3
    iget v3, p0, Landroid/sec/clipboard/ClipboardExManager;->mFormatid:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    goto :goto_2

    :catch_0
    move-exception v2

    .local v2, e:Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2
.end method

.method public hasDataOf(I)Z
    .locals 1
    .parameter "formatid"

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/sec/clipboard/ClipboardExManager;->hasData(Landroid/content/Context;I)Z

    move-result v0

    return v0
.end method

.method public isShowing()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Landroid/sec/clipboard/ClipboardExManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v2

    if-nez v2, :cond_1

    sget-boolean v2, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "ClipboardServiceEx"

    const-string v3, "isShowing - Fail~ Service is null."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v1

    :cond_1
    sget-object v2, Landroid/sec/clipboard/ClipboardExManager;->sService:Landroid/sec/clipboard/IClipboardService;

    invoke-interface {v2}, Landroid/sec/clipboard/IClipboardService;->IsShowUIClipboardData()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public setData(Landroid/content/Context;Landroid/sec/clipboard/data/ClipboardData;)Z
    .locals 4
    .parameter "context"
    .parameter "data"

    .prologue
    move-object v0, p2

    .local v0, clipData:Landroid/sec/clipboard/data/ClipboardData;
    iput-object p1, p0, Landroid/sec/clipboard/ClipboardExManager;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/sec/clipboard/ClipboardExManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v2

    if-nez v2, :cond_1

    sget-boolean v2, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "ClipboardServiceEx"

    const-string v3, "setData - Fail~ Service is null."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_1
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Landroid/sec/clipboard/ClipboardExManager$2;

    invoke-direct {v2, p0, v0}, Landroid/sec/clipboard/ClipboardExManager$2;-><init>(Landroid/sec/clipboard/ClipboardExManager;Landroid/sec/clipboard/data/ClipboardData;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .local v1, setDataThread:Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    const/4 v2, 0x1

    goto :goto_0
.end method

.method public setPasteFrozen(ILandroid/sec/clipboard/IClipboardDataPasteEvent;)V
    .locals 3
    .parameter "formatid"
    .parameter "clPasteEvent"

    .prologue
    iget v0, p0, Landroid/sec/clipboard/ClipboardExManager;->mFormatid:I

    if-eq v0, p1, :cond_0

    invoke-virtual {p0, p1, p2}, Landroid/sec/clipboard/ClipboardExManager;->updateData(ILandroid/sec/clipboard/IClipboardDataPasteEvent;)V

    :cond_0
    iput p1, p0, Landroid/sec/clipboard/ClipboardExManager;->mFormatid:I

    iput-object p2, p0, Landroid/sec/clipboard/ClipboardExManager;->mPasteEvent:Landroid/sec/clipboard/IClipboardDataPasteEvent;

    sget-boolean v0, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "ClipboardServiceEx"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPasteFrozen - Format:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public setThawPaste()V
    .locals 2

    .prologue
    const/4 v0, -0x1

    iput v0, p0, Landroid/sec/clipboard/ClipboardExManager;->mFormatid:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/sec/clipboard/ClipboardExManager;->mPasteEvent:Landroid/sec/clipboard/IClipboardDataPasteEvent;

    sget-boolean v0, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "ClipboardServiceEx"

    const-string v1, "setThawPaste"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public showUIDataDialog()V
    .locals 4

    .prologue
    :try_start_0
    invoke-static {}, Landroid/sec/clipboard/ClipboardExManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v1

    if-nez v1, :cond_1

    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "ClipboardServiceEx"

    const-string v2, "showUIDataDialog - Fail~ Service is null."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v1, Landroid/sec/clipboard/ClipboardExManager;->sService:Landroid/sec/clipboard/IClipboardService;

    invoke-interface {v1}, Landroid/sec/clipboard/IClipboardService;->showUIDataDialog()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "ClipboardServiceEx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showUIDataDialog(RemoteException): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public updateData(ILandroid/sec/clipboard/IClipboardDataPasteEvent;)V
    .locals 4
    .parameter "formatid"
    .parameter "clPasteEvent"

    .prologue
    iget-object v1, p0, Landroid/sec/clipboard/ClipboardExManager;->mPasteEvent:Landroid/sec/clipboard/IClipboardDataPasteEvent;

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    invoke-static {}, Landroid/sec/clipboard/ClipboardExManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v1

    if-nez v1, :cond_2

    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "ClipboardServiceEx"

    const-string v2, "updateData - Fail~ Service is null."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "ClipboardServiceEx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateData(formatid)(RemoteException): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0           #e:Landroid/os/RemoteException;
    :cond_2
    :try_start_1
    sget-object v1, Landroid/sec/clipboard/ClipboardExManager;->sService:Landroid/sec/clipboard/IClipboardService;

    invoke-interface {v1, p1, p2}, Landroid/sec/clipboard/IClipboardService;->UpdateUIClipboardData(ILandroid/sec/clipboard/IClipboardDataPasteEvent;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
