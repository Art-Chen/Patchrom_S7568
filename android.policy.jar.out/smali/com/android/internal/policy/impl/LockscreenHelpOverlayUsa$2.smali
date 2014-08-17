.class Lcom/android/internal/policy/impl/LockscreenHelpOverlayUsa$2;
.super Ljava/lang/Object;
.source "LockscreenHelpOverlayUsa.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/LockscreenHelpOverlayUsa;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Landroid/content/res/Configuration;Lcom/android/internal/policy/impl/LockscreenHelpOverlayInterface$HelpOverlayCallback;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/LockscreenHelpOverlayUsa;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/LockscreenHelpOverlayUsa;)V
    .locals 0
    .parameter

    .prologue
    .line 170
    iput-object p1, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlayUsa$2;->this$0:Lcom/android/internal/policy/impl/LockscreenHelpOverlayUsa;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 172
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlayUsa$2;->this$0:Lcom/android/internal/policy/impl/LockscreenHelpOverlayUsa;

    iget-object v0, v0, Lcom/android/internal/policy/impl/LockscreenHelpOverlayUsa;->mAudioManager:Landroid/media/AudioManager;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->playSoundEffect(I)V

    .line 173
    return-void
.end method
