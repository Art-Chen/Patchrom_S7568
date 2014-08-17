.class public Landroid/sec/enterprise/EnterpriseDeviceManager;
.super Ljava/lang/Object;
.source "EnterpriseDeviceManager.java"


# static fields
.field public static final ENTERPRISE_POLICY_SERVICE:Ljava/lang/String; = "enterprise_policy"

.field public static final ENTERPRISE_PROXY_SERVICE:Ljava/lang/String; = "edm_proxy"

.field private static mInstance:Landroid/sec/enterprise/EnterpriseDeviceManager;

.field private static mInstanceCreated:Z

.field private static mService:Landroid/sec/enterprise/IEDMProxy;


# instance fields
.field private mApplicationPolicy:Landroid/sec/enterprise/ApplicationPolicy;

.field private mApplicationPolicyCreated:Z

.field private mBluetoothPolicy:Landroid/sec/enterprise/BluetoothPolicy;

.field private mBluetoothPolicyCreated:Z

.field private mBrowserPolicy:Landroid/sec/enterprise/BrowserPolicy;

.field private mBrowserPolicyCreated:Z

.field private mDateTimePolicy:Landroid/sec/enterprise/DateTimePolicy;

.field private mDateTimePolicyCreated:Z

.field private mDeviceInventory:Landroid/sec/enterprise/DeviceInventory;

.field private mDeviceInventoryCreated:Z

.field private mFirewallPolicy:Landroid/sec/enterprise/FirewallPolicy;

.field private mFirewallPolicyCreated:Z

.field private mLocationPolicy:Landroid/sec/enterprise/LocationPolicy;

.field private mLocationPolicyCreated:Z

.field private mPasswordPolicy:Landroid/sec/enterprise/PasswordPolicy;

.field private mPasswordPolicyCreated:Z

.field private mPhonePolicy:Landroid/sec/enterprise/PhoneRestrictionPolicy;

.field private mPhonePolicyCreated:Z

.field private mRestrictionPolicy:Landroid/sec/enterprise/RestrictionPolicy;

.field private mRestrictionPolicyCreated:Z

.field private mRoamingPolicy:Landroid/sec/enterprise/RoamingPolicy;

.field private mRoamingPolicyCreated:Z

.field private mWifiPolicy:Landroid/sec/enterprise/WifiPolicy;

.field private mWifiPolicyCreated:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mApplicationPolicyCreated:Z

    iput-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mRoamingPolicyCreated:Z

    iput-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mDeviceInventoryCreated:Z

    iput-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mRestrictionPolicyCreated:Z

    iput-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mPasswordPolicyCreated:Z

    iput-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mBrowserPolicyCreated:Z

    iput-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mLocationPolicyCreated:Z

    iput-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mBluetoothPolicyCreated:Z

    iput-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mPhonePolicyCreated:Z

    iput-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mWifiPolicyCreated:Z

    iput-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mDateTimePolicyCreated:Z

    iput-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mFirewallPolicyCreated:Z

    return-void
.end method

.method public static create(Landroid/content/Context;Landroid/os/Handler;)Ljava/lang/Object;
    .locals 6
    .parameter "context"
    .parameter "handler"

    .prologue
    :try_start_0
    const-string v3, "android.app.enterprise.EnterpriseDeviceManager"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .local v0, c:Ljava/lang/Class;
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/content/Context;

    aput-object v5, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .local v1, constructor:Ljava/lang/reflect/Constructor;
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .end local v0           #c:Ljava/lang/Class;
    .end local v1           #constructor:Ljava/lang/reflect/Constructor;
    :goto_0
    return-object v3

    :catch_0
    move-exception v2

    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;
    .locals 2

    .prologue
    sget-boolean v0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mInstanceCreated:Z

    if-nez v0, :cond_1

    const-class v1, Landroid/sec/enterprise/EnterpriseDeviceManager;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mInstanceCreated:Z

    if-nez v0, :cond_0

    new-instance v0, Landroid/sec/enterprise/EnterpriseDeviceManager;

    invoke-direct {v0}, Landroid/sec/enterprise/EnterpriseDeviceManager;-><init>()V

    sput-object v0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mInstance:Landroid/sec/enterprise/EnterpriseDeviceManager;

    const/4 v0, 0x1

    sput-boolean v0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mInstanceCreated:Z

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mInstance:Landroid/sec/enterprise/EnterpriseDeviceManager;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static getService()Landroid/sec/enterprise/IEDMProxy;
    .locals 1

    .prologue
    sget-object v0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mService:Landroid/sec/enterprise/IEDMProxy;

    if-nez v0, :cond_0

    const-string v0, "edm_proxy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/sec/enterprise/IEDMProxy$Stub;->asInterface(Landroid/os/IBinder;)Landroid/sec/enterprise/IEDMProxy;

    move-result-object v0

    sput-object v0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mService:Landroid/sec/enterprise/IEDMProxy;

    :cond_0
    sget-object v0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mService:Landroid/sec/enterprise/IEDMProxy;

    return-object v0
.end method


# virtual methods
.method public getApplicationPolicy()Landroid/sec/enterprise/ApplicationPolicy;
    .locals 2

    .prologue
    iget-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mApplicationPolicyCreated:Z

    if-nez v0, :cond_1

    const-class v1, Landroid/sec/enterprise/ApplicationPolicy;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mApplicationPolicyCreated:Z

    if-nez v0, :cond_0

    new-instance v0, Landroid/sec/enterprise/ApplicationPolicy;

    invoke-direct {v0}, Landroid/sec/enterprise/ApplicationPolicy;-><init>()V

    iput-object v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mApplicationPolicy:Landroid/sec/enterprise/ApplicationPolicy;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mApplicationPolicyCreated:Z

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    iget-object v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mApplicationPolicy:Landroid/sec/enterprise/ApplicationPolicy;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getBluetoothPolicy()Landroid/sec/enterprise/BluetoothPolicy;
    .locals 2

    .prologue
    iget-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mBluetoothPolicyCreated:Z

    if-nez v0, :cond_1

    const-class v1, Landroid/sec/enterprise/BluetoothPolicy;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mBluetoothPolicyCreated:Z

    if-nez v0, :cond_0

    new-instance v0, Landroid/sec/enterprise/BluetoothPolicy;

    invoke-direct {v0}, Landroid/sec/enterprise/BluetoothPolicy;-><init>()V

    iput-object v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mBluetoothPolicy:Landroid/sec/enterprise/BluetoothPolicy;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mBluetoothPolicyCreated:Z

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    iget-object v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mBluetoothPolicy:Landroid/sec/enterprise/BluetoothPolicy;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getBrowserPolicy()Landroid/sec/enterprise/BrowserPolicy;
    .locals 2

    .prologue
    iget-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mBrowserPolicyCreated:Z

    if-nez v0, :cond_1

    const-class v1, Landroid/sec/enterprise/BrowserPolicy;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mBrowserPolicyCreated:Z

    if-nez v0, :cond_0

    new-instance v0, Landroid/sec/enterprise/BrowserPolicy;

    invoke-direct {v0}, Landroid/sec/enterprise/BrowserPolicy;-><init>()V

    iput-object v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mBrowserPolicy:Landroid/sec/enterprise/BrowserPolicy;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mBrowserPolicyCreated:Z

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    iget-object v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mBrowserPolicy:Landroid/sec/enterprise/BrowserPolicy;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getDateTimePolicy()Landroid/sec/enterprise/DateTimePolicy;
    .locals 2

    .prologue
    iget-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mDateTimePolicyCreated:Z

    if-nez v0, :cond_1

    const-class v1, Landroid/sec/enterprise/DateTimePolicy;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mDateTimePolicyCreated:Z

    if-nez v0, :cond_0

    new-instance v0, Landroid/sec/enterprise/DateTimePolicy;

    invoke-direct {v0}, Landroid/sec/enterprise/DateTimePolicy;-><init>()V

    iput-object v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mDateTimePolicy:Landroid/sec/enterprise/DateTimePolicy;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mDateTimePolicyCreated:Z

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    iget-object v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mDateTimePolicy:Landroid/sec/enterprise/DateTimePolicy;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getDeviceInventory()Landroid/sec/enterprise/DeviceInventory;
    .locals 2

    .prologue
    iget-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mDeviceInventoryCreated:Z

    if-nez v0, :cond_1

    const-class v1, Landroid/sec/enterprise/DeviceInventory;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mDeviceInventoryCreated:Z

    if-nez v0, :cond_0

    new-instance v0, Landroid/sec/enterprise/DeviceInventory;

    invoke-direct {v0}, Landroid/sec/enterprise/DeviceInventory;-><init>()V

    iput-object v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mDeviceInventory:Landroid/sec/enterprise/DeviceInventory;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mDeviceInventoryCreated:Z

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    iget-object v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mDeviceInventory:Landroid/sec/enterprise/DeviceInventory;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getFirewallPolicy()Landroid/sec/enterprise/FirewallPolicy;
    .locals 2

    .prologue
    iget-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mFirewallPolicyCreated:Z

    if-nez v0, :cond_1

    const-class v1, Landroid/sec/enterprise/FirewallPolicy;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mFirewallPolicyCreated:Z

    if-nez v0, :cond_0

    new-instance v0, Landroid/sec/enterprise/FirewallPolicy;

    invoke-direct {v0}, Landroid/sec/enterprise/FirewallPolicy;-><init>()V

    iput-object v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mFirewallPolicy:Landroid/sec/enterprise/FirewallPolicy;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mFirewallPolicyCreated:Z

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    iget-object v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mFirewallPolicy:Landroid/sec/enterprise/FirewallPolicy;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getLocationPolicy()Landroid/sec/enterprise/LocationPolicy;
    .locals 2

    .prologue
    iget-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mLocationPolicyCreated:Z

    if-nez v0, :cond_1

    const-class v1, Landroid/sec/enterprise/LocationPolicy;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mLocationPolicyCreated:Z

    if-nez v0, :cond_0

    new-instance v0, Landroid/sec/enterprise/LocationPolicy;

    invoke-direct {v0}, Landroid/sec/enterprise/LocationPolicy;-><init>()V

    iput-object v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mLocationPolicy:Landroid/sec/enterprise/LocationPolicy;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mLocationPolicyCreated:Z

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    iget-object v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mLocationPolicy:Landroid/sec/enterprise/LocationPolicy;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getPasswordPolicy()Landroid/sec/enterprise/PasswordPolicy;
    .locals 2

    .prologue
    iget-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mPasswordPolicyCreated:Z

    if-nez v0, :cond_1

    const-class v1, Landroid/sec/enterprise/PasswordPolicy;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mPasswordPolicyCreated:Z

    if-nez v0, :cond_0

    new-instance v0, Landroid/sec/enterprise/PasswordPolicy;

    invoke-direct {v0}, Landroid/sec/enterprise/PasswordPolicy;-><init>()V

    iput-object v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mPasswordPolicy:Landroid/sec/enterprise/PasswordPolicy;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mPasswordPolicyCreated:Z

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    iget-object v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mPasswordPolicy:Landroid/sec/enterprise/PasswordPolicy;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getPhoneRestrictionPolicy()Landroid/sec/enterprise/PhoneRestrictionPolicy;
    .locals 2

    .prologue
    iget-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mPhonePolicyCreated:Z

    if-nez v0, :cond_1

    const-class v1, Landroid/sec/enterprise/PhoneRestrictionPolicy;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mPhonePolicyCreated:Z

    if-nez v0, :cond_0

    new-instance v0, Landroid/sec/enterprise/PhoneRestrictionPolicy;

    invoke-direct {v0}, Landroid/sec/enterprise/PhoneRestrictionPolicy;-><init>()V

    iput-object v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mPhonePolicy:Landroid/sec/enterprise/PhoneRestrictionPolicy;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mPhonePolicyCreated:Z

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    iget-object v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mPhonePolicy:Landroid/sec/enterprise/PhoneRestrictionPolicy;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getRestrictionPolicy()Landroid/sec/enterprise/RestrictionPolicy;
    .locals 2

    .prologue
    iget-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mRestrictionPolicyCreated:Z

    if-nez v0, :cond_1

    const-class v1, Landroid/sec/enterprise/RestrictionPolicy;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mRestrictionPolicyCreated:Z

    if-nez v0, :cond_0

    new-instance v0, Landroid/sec/enterprise/RestrictionPolicy;

    invoke-direct {v0}, Landroid/sec/enterprise/RestrictionPolicy;-><init>()V

    iput-object v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mRestrictionPolicy:Landroid/sec/enterprise/RestrictionPolicy;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mRestrictionPolicyCreated:Z

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    iget-object v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mRestrictionPolicy:Landroid/sec/enterprise/RestrictionPolicy;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getRoamingPolicy()Landroid/sec/enterprise/RoamingPolicy;
    .locals 2

    .prologue
    iget-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mRoamingPolicyCreated:Z

    if-nez v0, :cond_1

    const-class v1, Landroid/sec/enterprise/RoamingPolicy;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mRoamingPolicyCreated:Z

    if-nez v0, :cond_0

    new-instance v0, Landroid/sec/enterprise/RoamingPolicy;

    invoke-direct {v0}, Landroid/sec/enterprise/RoamingPolicy;-><init>()V

    iput-object v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mRoamingPolicy:Landroid/sec/enterprise/RoamingPolicy;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mRoamingPolicyCreated:Z

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    iget-object v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mRoamingPolicy:Landroid/sec/enterprise/RoamingPolicy;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getWifiPolicy()Landroid/sec/enterprise/WifiPolicy;
    .locals 2

    .prologue
    iget-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mWifiPolicyCreated:Z

    if-nez v0, :cond_1

    const-class v1, Landroid/sec/enterprise/WifiPolicy;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mWifiPolicyCreated:Z

    if-nez v0, :cond_0

    new-instance v0, Landroid/sec/enterprise/WifiPolicy;

    invoke-direct {v0}, Landroid/sec/enterprise/WifiPolicy;-><init>()V

    iput-object v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mWifiPolicy:Landroid/sec/enterprise/WifiPolicy;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mWifiPolicyCreated:Z

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    iget-object v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mWifiPolicy:Landroid/sec/enterprise/WifiPolicy;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
