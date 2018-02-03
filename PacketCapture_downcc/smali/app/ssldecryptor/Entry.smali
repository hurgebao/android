.class public final Lapp/ssldecryptor/Entry;
.super Ljava/lang/Object;
.source "ProxyCertCache.kt"


# instance fields
.field private final certKeystore:Lapp/ssldecryptor/CertKeyStore;

.field private final originCert:Ljava/security/cert/X509Certificate;


# direct methods
.method public constructor <init>(Ljava/security/cert/X509Certificate;Lapp/ssldecryptor/CertKeyStore;)V
    .locals 1
    .param p1, "originCert"    # Ljava/security/cert/X509Certificate;
    .param p2, "certKeystore"    # Lapp/ssldecryptor/CertKeyStore;

    .prologue
    const-string v0, "originCert"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "certKeystore"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lapp/ssldecryptor/Entry;->originCert:Ljava/security/cert/X509Certificate;

    iput-object p2, p0, Lapp/ssldecryptor/Entry;->certKeystore:Lapp/ssldecryptor/CertKeyStore;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_0

    instance-of v0, p1, Lapp/ssldecryptor/Entry;

    if-eqz v0, :cond_1

    check-cast p1, Lapp/ssldecryptor/Entry;

    iget-object v0, p0, Lapp/ssldecryptor/Entry;->originCert:Ljava/security/cert/X509Certificate;

    iget-object v1, p1, Lapp/ssldecryptor/Entry;->originCert:Ljava/security/cert/X509Certificate;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lapp/ssldecryptor/Entry;->certKeystore:Lapp/ssldecryptor/CertKeyStore;

    iget-object v1, p1, Lapp/ssldecryptor/Entry;->certKeystore:Lapp/ssldecryptor/CertKeyStore;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getCertKeystore()Lapp/ssldecryptor/CertKeyStore;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lapp/ssldecryptor/Entry;->certKeystore:Lapp/ssldecryptor/CertKeyStore;

    return-object v0
.end method

.method public final getOriginCert()Ljava/security/cert/X509Certificate;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lapp/ssldecryptor/Entry;->originCert:Ljava/security/cert/X509Certificate;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lapp/ssldecryptor/Entry;->originCert:Ljava/security/cert/X509Certificate;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lapp/ssldecryptor/Entry;->certKeystore:Lapp/ssldecryptor/CertKeyStore;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Entry(originCert="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lapp/ssldecryptor/Entry;->originCert:Ljava/security/cert/X509Certificate;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", certKeystore="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lapp/ssldecryptor/Entry;->certKeystore:Lapp/ssldecryptor/CertKeyStore;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
