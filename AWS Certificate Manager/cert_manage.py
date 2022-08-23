import argparse
import sys 
import boto3 

def main()

  parser = argparse.ArgumentParser(description='Script to list and export certificates from CAs')
  parser.add_argument('--listcerts', action='store_true',
                     help='List certificates allocated in ca')
  parser.add_argument('--exportall', action='store',
                    help='Export certificates allocated in the ca based on domain name. \
                    Give directory they need to go to ex. ~/PKI/key_bundles')
  args = parser.parse_args()
  
  list_certs = args.listcerts
  export_dir = args.exportall
  
  #Create ACM Client
  #boto3.setup_default_session(profile_name='ca-users')
  acm = boto3.client('acm', region_name='Region CA Is Listed In')
  
  def list_certificates():
    paginator = acm.get_paginator('list_certificates')
    for response in paginator.paginate():
      for certificate in response['CertificateSummaryList']:
        print(certificate['CertificateArn'] + " " + certificate['DomainName'])
        
  def export_all():
    paginator = acm.get_paginator('list_certificates')
    for response in paginator.paginate():
      for certificate in response['CertificateSummaryList]:
         export = acm.export_certificate(CertificateArn=certificate['CertificateArn'], Passphrase=b'PASSPHRASE')
         f = open(export_dir + "/" + certificate['DomainName'] + ".pem", "w")
         c = open(export_dir + "/" + certificate['DomainName'] + ".ca", "w")
         k = open(export_dir + "/" + certificate['DomainName'] + ".key", "w")
         f.write(export['Certificate'])
         c.write(export['CertificateChain'])
         k.write(export['PrivateKey'])
         f.close()
         c.close()
         k.close()
                                  
  if list_certs:
    list_certificates()
  elif export_dir:
    export_all()
                                 
 if __name__ == '__main__':
     sys.exit(main())
                               
 
     
                                  
                                  
     
