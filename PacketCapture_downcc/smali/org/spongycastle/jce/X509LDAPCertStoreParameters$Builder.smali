.class public Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;
.super Ljava/lang/Object;
.source "X509LDAPCertStoreParameters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/jce/X509LDAPCertStoreParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private aACertificateAttribute:Ljava/lang/String;

.field private aACertificateSubjectAttributeName:Ljava/lang/String;

.field private attributeAuthorityRevocationListAttribute:Ljava/lang/String;

.field private attributeAuthorityRevocationListIssuerAttributeName:Ljava/lang/String;

.field private attributeCertificateAttributeAttribute:Ljava/lang/String;

.field private attributeCertificateAttributeSubjectAttributeName:Ljava/lang/String;

.field private attributeCertificateRevocationListAttribute:Ljava/lang/String;

.field private attributeCertificateRevocationListIssuerAttributeName:Ljava/lang/String;

.field private attributeDescriptorCertificateAttribute:Ljava/lang/String;

.field private attributeDescriptorCertificateSubjectAttributeName:Ljava/lang/String;

.field private authorityRevocationListAttribute:Ljava/lang/String;

.field private authorityRevocationListIssuerAttributeName:Ljava/lang/String;

.field private baseDN:Ljava/lang/String;

.field private cACertificateAttribute:Ljava/lang/String;

.field private cACertificateSubjectAttributeName:Ljava/lang/String;

.field private certificateRevocationListAttribute:Ljava/lang/String;

.field private certificateRevocationListIssuerAttributeName:Ljava/lang/String;

.field private crossCertificateAttribute:Ljava/lang/String;

.field private crossCertificateSubjectAttributeName:Ljava/lang/String;

.field private deltaRevocationListAttribute:Ljava/lang/String;

.field private deltaRevocationListIssuerAttributeName:Ljava/lang/String;

.field private ldapAACertificateAttributeName:Ljava/lang/String;

.field private ldapAttributeAuthorityRevocationListAttributeName:Ljava/lang/String;

.field private ldapAttributeCertificateAttributeAttributeName:Ljava/lang/String;

.field private ldapAttributeCertificateRevocationListAttributeName:Ljava/lang/String;

.field private ldapAttributeDescriptorCertificateAttributeName:Ljava/lang/String;

.field private ldapAuthorityRevocationListAttributeName:Ljava/lang/String;

.field private ldapCACertificateAttributeName:Ljava/lang/String;

.field private ldapCertificateRevocationListAttributeName:Ljava/lang/String;

.field private ldapCrossCertificateAttributeName:Ljava/lang/String;

.field private ldapDeltaRevocationListAttributeName:Ljava/lang/String;

.field private ldapURL:Ljava/lang/String;

.field private ldapUserCertificateAttributeName:Ljava/lang/String;

.field private searchForSerialNumberIn:Ljava/lang/String;

.field private userCertificateAttribute:Ljava/lang/String;

.field private userCertificateSubjectAttributeName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 177
    const-string v0, "ldap://localhost:389"

    const-string v1, ""

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "ldapURL"    # Ljava/lang/String;
    .param p2, "baseDN"    # Ljava/lang/String;

    .prologue
    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 182
    iput-object p1, p0, Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;->ldapURL:Ljava/lang/String;

    .line 183
    if-nez p2, :cond_0

    .line 185
    const-string v0, ""

    iput-object v0, p0, Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;->baseDN:Ljava/lang/String;

    .line 192
    :goto_0
    const-string v0, "userCertificate"

    iput-object v0, p0, Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;->userCertificateAttribute:Ljava/lang/String;

    .line 193
    const-string v0, "cACertificate"

    iput-object v0, p0, Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;->cACertificateAttribute:Ljava/lang/String;

    .line 194
    const-string v0, "crossCertificatePair"

    iput-object v0, p0, Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;->crossCertificateAttribute:Ljava/lang/String;

    .line 195
    const-string v0, "certificateRevocationList"

    iput-object v0, p0, Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;->certificateRevocationListAttribute:Ljava/lang/String;

    .line 196
    const-string v0, "deltaRevocationList"

    iput-object v0, p0, Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;->deltaRevocationListAttribute:Ljava/lang/String;

    .line 197
    const-string v0, "authorityRevocationList"

    iput-object v0, p0, Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;->authorityRevocationListAttribute:Ljava/lang/String;

    .line 198
    const-string v0, "attributeCertificateAttribute"

    iput-object v0, p0, Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;->attributeCertificateAttributeAttribute:Ljava/lang/String;

    .line 199
    const-string v0, "aACertificate"

    iput-object v0, p0, Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;->aACertificateAttribute:Ljava/lang/String;

    .line 200
    const-string v0, "attributeDescriptorCertificate"

    iput-object v0, p0, Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;->attributeDescriptorCertificateAttribute:Ljava/lang/String;

    .line 201
    const-string v0, "attributeCertificateRevocationList"

    iput-object v0, p0, Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;->attributeCertificateRevocationListAttribute:Ljava/lang/String;

    .line 202
    const-string v0, "attributeAuthorityRevocationList"

    iput-object v0, p0, Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;->attributeAuthorityRevocationListAttribute:Ljava/lang/String;

    .line 203
    const-string v0, "cn"

    iput-object v0, p0, Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;->ldapUserCertificateAttributeName:Ljava/lang/String;

    .line 204
    const-string v0, "cn ou o"

    iput-object v0, p0, Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;->ldapCACertificateAttributeName:Ljava/lang/String;

    .line 205
    const-string v0, "cn ou o"

    iput-object v0, p0, Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;->ldapCrossCertificateAttributeName:Ljava/lang/String;

    .line 206
    const-string v0, "cn ou o"

    iput-object v0, p0, Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;->ldapCertificateRevocationListAttributeName:Ljava/lang/String;

    .line 207
    const-string v0, "cn ou o"

    iput-object v0, p0, Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;->ldapDeltaRevocationListAttributeName:Ljava/lang/String;

    .line 208
    const-string v0, "cn ou o"

    iput-object v0, p0, Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;->ldapAuthorityRevocationListAttributeName:Ljava/lang/String;

    .line 209
    const-string v0, "cn"

    iput-object v0, p0, Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;->ldapAttributeCertificateAttributeAttributeName:Ljava/lang/String;

    .line 210
    const-string v0, "cn o ou"

    iput-object v0, p0, Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;->ldapAACertificateAttributeName:Ljava/lang/String;

    .line 211
    const-string v0, "cn o ou"

    iput-object v0, p0, Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;->ldapAttributeDescriptorCertificateAttributeName:Ljava/lang/String;

    .line 212
    const-string v0, "cn o ou"

    iput-object v0, p0, Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;->ldapAttributeCertificateRevocationListAttributeName:Ljava/lang/String;

    .line 213
    const-string v0, "cn o ou"

    iput-object v0, p0, Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;->ldapAttributeAuthorityRevocationListAttributeName:Ljava/lang/String;

    .line 214
    const-string v0, "cn"

    iput-object v0, p0, Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;->userCertificateSubjectAttributeName:Ljava/lang/String;

    .line 215
    const-string v0, "o ou"

    iput-object v0, p0, Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;->cACertificateSubjectAttributeName:Ljava/lang/String;

    .line 216
    const-string v0, "o ou"

    iput-object v0, p0, Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;->crossCertificateSubjectAttributeName:Ljava/lang/String;

    .line 217
    const-string v0, "o ou"

    iput-object v0, p0, Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;->certificateRevocationListIssuerAttributeName:Ljava/lang/String;

    .line 218
    const-string v0, "o ou"

    iput-object v0, p0, Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;->deltaRevocationListIssuerAttributeName:Ljava/lang/String;

    .line 219
    const-string v0, "o ou"

    iput-object v0, p0, Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;->authorityRevocationListIssuerAttributeName:Ljava/lang/String;

    .line 220
    const-string v0, "cn"

    iput-object v0, p0, Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;->attributeCertificateAttributeSubjectAttributeName:Ljava/lang/String;

    .line 221
    const-string v0, "o ou"

    iput-object v0, p0, Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;->aACertificateSubjectAttributeName:Ljava/lang/String;

    .line 222
    const-string v0, "o ou"

    iput-object v0, p0, Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;->attributeDescriptorCertificateSubjectAttributeName:Ljava/lang/String;

    .line 223
    const-string v0, "o ou"

    iput-object v0, p0, Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;->attributeCertificateRevocationListIssuerAttributeName:Ljava/lang/String;

    .line 224
    const-string v0, "o ou"

    iput-object v0, p0, Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;->attributeAuthorityRevocationListIssuerAttributeName:Ljava/lang/String;

    .line 225
    const-string v0, "uid serialNumber cn"

    iput-object v0, p0, Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;->searchForSerialNumberIn:Ljava/lang/String;

    .line 226
    return-void

    .line 189
    :cond_0
    iput-object p2, p0, Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;->baseDN:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method static synthetic access$100(Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;

    .prologue
    .line 94
    iget-object v0, p0, Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;->ldapURL:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;

    .prologue
    .line 94
    iget-object v0, p0, Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;->aACertificateAttribute:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;

    .prologue
    .line 94
    iget-object v0, p0, Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;->attributeDescriptorCertificateAttribute:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;

    .prologue
    .line 94
    iget-object v0, p0, Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;->attributeCertificateRevocationListAttribute:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300(Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;

    .prologue
    .line 94
    iget-object v0, p0, Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;->attributeAuthorityRevocationListAttribute:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1400(Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;

    .prologue
    .line 94
    iget-object v0, p0, Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;->ldapUserCertificateAttributeName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1500(Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;

    .prologue
    .line 94
    iget-object v0, p0, Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;->ldapCACertificateAttributeName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1600(Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;

    .prologue
    .line 94
    iget-object v0, p0, Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;->ldapCrossCertificateAttributeName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1700(Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;

    .prologue
    .line 94
    iget-object v0, p0, Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;->ldapCertificateRevocationListAttributeName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1800(Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;

    .prologue
    .line 94
    iget-object v0, p0, Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;->ldapDeltaRevocationListAttributeName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1900(Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;

    .prologue
    .line 94
    iget-object v0, p0, Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;->ldapAuthorityRevocationListAttributeName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;

    .prologue
    .line 94
    iget-object v0, p0, Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;->baseDN:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2000(Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;

    .prologue
    .line 94
    iget-object v0, p0, Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;->ldapAttributeCertificateAttributeAttributeName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2100(Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;

    .prologue
    .line 94
    iget-object v0, p0, Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;->ldapAACertificateAttributeName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2200(Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;

    .prologue
    .line 94
    iget-object v0, p0, Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;->ldapAttributeDescriptorCertificateAttributeName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2300(Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;

    .prologue
    .line 94
    iget-object v0, p0, Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;->ldapAttributeCertificateRevocationListAttributeName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2400(Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;

    .prologue
    .line 94
    iget-object v0, p0, Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;->ldapAttributeAuthorityRevocationListAttributeName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2500(Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;

    .prologue
    .line 94
    iget-object v0, p0, Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;->userCertificateSubjectAttributeName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2600(Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;

    .prologue
    .line 94
    iget-object v0, p0, Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;->cACertificateSubjectAttributeName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2700(Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;

    .prologue
    .line 94
    iget-object v0, p0, Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;->crossCertificateSubjectAttributeName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2800(Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;

    .prologue
    .line 94
    iget-object v0, p0, Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;->certificateRevocationListIssuerAttributeName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2900(Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;

    .prologue
    .line 94
    iget-object v0, p0, Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;->deltaRevocationListIssuerAttributeName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;

    .prologue
    .line 94
    iget-object v0, p0, Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;->userCertificateAttribute:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3000(Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;

    .prologue
    .line 94
    iget-object v0, p0, Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;->authorityRevocationListIssuerAttributeName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3100(Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;

    .prologue
    .line 94
    iget-object v0, p0, Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;->attributeCertificateAttributeSubjectAttributeName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3200(Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;

    .prologue
    .line 94
    iget-object v0, p0, Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;->aACertificateSubjectAttributeName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3300(Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;

    .prologue
    .line 94
    iget-object v0, p0, Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;->attributeDescriptorCertificateSubjectAttributeName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3400(Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;

    .prologue
    .line 94
    iget-object v0, p0, Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;->attributeCertificateRevocationListIssuerAttributeName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3500(Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;

    .prologue
    .line 94
    iget-object v0, p0, Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;->attributeAuthorityRevocationListIssuerAttributeName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3600(Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;

    .prologue
    .line 94
    iget-object v0, p0, Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;->searchForSerialNumberIn:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;

    .prologue
    .line 94
    iget-object v0, p0, Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;->cACertificateAttribute:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;

    .prologue
    .line 94
    iget-object v0, p0, Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;->crossCertificateAttribute:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;

    .prologue
    .line 94
    iget-object v0, p0, Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;->certificateRevocationListAttribute:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;

    .prologue
    .line 94
    iget-object v0, p0, Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;->deltaRevocationListAttribute:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;

    .prologue
    .line 94
    iget-object v0, p0, Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;->authorityRevocationListAttribute:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;

    .prologue
    .line 94
    iget-object v0, p0, Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;->attributeCertificateAttributeAttribute:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public build()Lorg/spongycastle/jce/X509LDAPCertStoreParameters;
    .locals 2

    .prologue
    .line 770
    iget-object v0, p0, Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;->ldapUserCertificateAttributeName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;->ldapCACertificateAttributeName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;->ldapCrossCertificateAttributeName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;->ldapCertificateRevocationListAttributeName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;->ldapDeltaRevocationListAttributeName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;->ldapAuthorityRevocationListAttributeName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;->ldapAttributeCertificateAttributeAttributeName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;->ldapAACertificateAttributeName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;->ldapAttributeDescriptorCertificateAttributeName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;->ldapAttributeCertificateRevocationListAttributeName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;->ldapAttributeAuthorityRevocationListAttributeName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;->userCertificateSubjectAttributeName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;->cACertificateSubjectAttributeName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;->crossCertificateSubjectAttributeName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;->certificateRevocationListIssuerAttributeName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;->deltaRevocationListIssuerAttributeName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;->authorityRevocationListIssuerAttributeName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;->attributeCertificateAttributeSubjectAttributeName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;->aACertificateSubjectAttributeName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;->attributeDescriptorCertificateSubjectAttributeName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;->attributeCertificateRevocationListIssuerAttributeName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;->attributeAuthorityRevocationListIssuerAttributeName:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 793
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Necessary parameters not specified."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 796
    :cond_1
    new-instance v0, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;-><init>(Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;Lorg/spongycastle/jce/X509LDAPCertStoreParameters$1;)V

    return-object v0
.end method
