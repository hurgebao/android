.class public final Lapp/ssldecryptor/ProxyCertCache;
.super Ljava/lang/Object;
.source "ProxyCertCache.kt"


# static fields
.field public static final INSTANCE:Lapp/ssldecryptor/ProxyCertCache;

.field private static mHit:I

.field private static final mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lapp/ssldecryptor/Entry;",
            ">;"
        }
    .end annotation
.end field

.field private static mMiss:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    new-instance v0, Lapp/ssldecryptor/ProxyCertCache;

    invoke-direct {v0}, Lapp/ssldecryptor/ProxyCertCache;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    check-cast p0, Lapp/ssldecryptor/ProxyCertCache;

    .end local p0    # "this":Lapp/ssldecryptor/ProxyCertCache;
    sput-object p0, Lapp/ssldecryptor/ProxyCertCache;->INSTANCE:Lapp/ssldecryptor/ProxyCertCache;

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lapp/ssldecryptor/ProxyCertCache;->mList:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final declared-synchronized clear()V
    .locals 1

    .prologue
    .line 39
    monitor-enter p0

    :try_start_0
    sget-object v0, Lapp/ssldecryptor/ProxyCertCache;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    monitor-exit p0

    return-void

    .line 39
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getCertKeystore(Landroid/content/Context;Ljava/security/cert/X509Certificate;)Lapp/ssldecryptor/CertKeyStore;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "originCert"    # Ljava/security/cert/X509Certificate;

    .prologue
    monitor-enter p0

    :try_start_0
    const-string v3, "context"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "originCert"

    invoke-static {p2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    sget-object v3, Lapp/ssldecryptor/ProxyCertCache;->mList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lapp/ssldecryptor/Entry;

    .line 20
    .local v2, "entry":Lapp/ssldecryptor/Entry;
    invoke-virtual {v2}, Lapp/ssldecryptor/Entry;->getOriginCert()Ljava/security/cert/X509Certificate;

    move-result-object v4

    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getSignature()[B

    move-result-object v4

    invoke-virtual {p2}, Ljava/security/cert/X509Certificate;->getSignature()[B

    move-result-object v5

    invoke-static {v4, v5}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 21
    sget v3, Lapp/ssldecryptor/ProxyCertCache;->mHit:I

    add-int/lit8 v3, v3, 0x1

    sput v3, Lapp/ssldecryptor/ProxyCertCache;->mHit:I

    .line 22
    invoke-virtual {v2}, Lapp/ssldecryptor/Entry;->getCertKeystore()Lapp/ssldecryptor/CertKeyStore;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 34
    :goto_0
    monitor-exit p0

    return-object v1

    .line 25
    .end local v2    # "entry":Lapp/ssldecryptor/Entry;
    :cond_1
    :try_start_1
    sget v3, Lapp/ssldecryptor/ProxyCertCache;->mMiss:I

    add-int/lit8 v3, v3, 0x1

    sput v3, Lapp/ssldecryptor/ProxyCertCache;->mMiss:I

    .line 27
    sget-object v3, Lapp/ssldecryptor/CACertGenerator;->INSTANCE:Lapp/ssldecryptor/CACertGenerator;

    invoke-virtual {v3, p1}, Lapp/ssldecryptor/CACertGenerator;->loadOrGenerate(Landroid/content/Context;)Lapp/ssldecryptor/CertKeyStore;

    move-result-object v0

    .line 28
    .local v0, "caCert":Lapp/ssldecryptor/CertKeyStore;
    if-nez v0, :cond_2

    .line 29
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "aa"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    check-cast v3, Ljava/lang/Throwable;

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4294967295
    .end local v0    # "caCert":Lapp/ssldecryptor/CertKeyStore;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 31
    .restart local v0    # "caCert":Lapp/ssldecryptor/CertKeyStore;
    :cond_2
    :try_start_2
    sget-object v3, Lapp/ssldecryptor/ProxyCertGenerator;->INSTANCE:Lapp/ssldecryptor/ProxyCertGenerator;

    invoke-virtual {v3, p2, v0}, Lapp/ssldecryptor/ProxyCertGenerator;->generate(Ljava/security/cert/X509Certificate;Lapp/ssldecryptor/CertKeyStore;)Lapp/ssldecryptor/CertKeyStore;

    move-result-object v1

    .line 32
    .local v1, "cert":Lapp/ssldecryptor/CertKeyStore;
    new-instance v2, Lapp/ssldecryptor/Entry;

    invoke-direct {v2, p2, v1}, Lapp/ssldecryptor/Entry;-><init>(Ljava/security/cert/X509Certificate;Lapp/ssldecryptor/CertKeyStore;)V

    .line 33
    .restart local v2    # "entry":Lapp/ssldecryptor/Entry;
    sget-object v3, Lapp/ssldecryptor/ProxyCertCache;->mList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method
