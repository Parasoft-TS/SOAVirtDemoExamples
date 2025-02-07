---
parasoftVersion: 2024.2.0
productVersion: 10.7.1
schemaVersion: 1
suite:
  $type: TestSuite
  hasEnvironmentConfig: true
  environmentConfig:
    environments:
    - variables:
      - name: SWAGGER
        value: http://dev1.parasoft.com:8090/parabank/services/bank/swagger.yaml
      - name: BASEURL
        value: http://dev1.parasoft.com:8091/parabank/services/bank
      - name: BASE_BASE_URL
        value: http://dev1.parasoft.com:8091
      - name: AUTH_BASEURL
        value: http://localhost:9080
      - name: username
        maskValue: true
        value: AwAAABhPVjlGS3dmQ3IwblBvZUZsS2ZKclpRPT0=
      - name: password
        value: '****'
      - name: HOST
        value: dev1.parasoft.com:9022
      name: dev1.parasoft.com
    - variables:
      - name: SWAGGER
        value: http://qa1.parasoft.com:8090/parabank/services/bank/swagger.yaml
      - name: BASEURL
        value: http://qa1.parasoft.com:8090/parabank/services/bank
      - name: BASE_BASE_URL
        value: http://qa1.parasoft.com:8090
      - name: AUTH_BASEURL
        value: http://localhost:9080
      - name: username
        maskValue: true
        value: AwAAABhPVjlGS3dmQ3IwblBvZUZsS2ZKclpRPT0=
      - name: password
        value: '****'
      - name: HOST
        value: qa1.parasoft.com:9021
      - name: DATABASE_CONNECTION_STRING
        value: hsql://qa1.parasoft.com:9021/parabank
      - name: SV_BASEURL
        value: http://localhost:9080
      - name: SV_HOST
        value: localhost
      - name: SV_PORT
        value: 9080
      - name: SV_USER
        value: demo
      - name: SV_PASS
        value: demo-user
      - name: 192_168_56_101_BASE_URL
        value: http://qa1.parasoft.com:8090
      name: qa1.parasoft.com
    - variables:
      - name: SWAGGER
        value: http://18.237.146.177:8090/parabank/services/bank/openapi.yaml
      - name: BASEURL
        value: http://18.237.146.177:8090/parabank/services/bank
      - name: DATABASE_CONNECTION_STRING
        value: hsql://18.237.146.177:9001/parabank
      - name: SV_BASEURL
        value: http://18.237.146.177:9080
      - name: SV_HOST
        value: 18.237.146.177
      - name: SV_PORT
        value: 9080
      - name: SV_USER
        value: demo
      - name: SV_PASS
        value: demo-user
      - name: BASE_BASE_URL
        value: http://18.237.146.177:8090
      - name: AUTH_BASEURL
        value: http://18.237.146.177:9080
      - name: username
        value: '****'
      - name: password
        value: '****'
      name: Docker AWS Demo Server Environment
      active: true
  reportingSettings:
    requirementsTracking:
      comment: Version 2.5
  enabled: true
  name: Parabank Demo Examples
  rootTestSuite: true
  lastModifiedBy: whaaker
  authentications:
  - $type: OAuth2Authentication
    name: OAuth 2.0
    config:
      codeVerifier:
        values:
        - $type: AutomaticValue
        - $type: ScriptedValue
        fixedValue:
          $type: StringTestValue
        selectedIndex: 0
  performance:
    groups:
    - name: "/accounts/{accountId} - GET"
    - id: 1
      name: "/accounts/{accountId}/transactions - GET"
    - id: 2
      name: "/accounts/{accountId}/transactions/amount/{amount} - GET"
    - id: 3
      name: "/accounts/{accountId}/transactions/fromDate/{fromDate}/toDate/{toDate}\
        \ - GET"
    - id: 4
      name: "/accounts/{accountId}/transactions/month/{month}/type/{type} - GET"
    - id: 5
      name: "/accounts/{accountId}/transactions/onDate/{onDate} - GET"
    - id: 6
      name: /cleanDB - POST
    - id: 7
      name: /createAccount - POST
    - id: 8
      name: "/customers/update/{customerId} - POST"
    - id: 9
      name: "/customers/{customerId} - GET"
    - id: 10
      name: "/customers/{customerId}/accounts - GET"
    - id: 11
      name: "/customers/{customerId}/buyPosition - POST"
    - id: 12
      name: "/customers/{customerId}/positions - GET"
    - id: 13
      name: "/customers/{customerId}/sellPosition - POST"
    - id: 14
      name: /deposit - POST
    - id: 15
      name: /initializeDB - POST
    - id: 16
      name: "/login/{username}/{password} - GET"
    - id: 17
      name: "/positions/{positionId} - GET"
    - id: 18
      name: "/positions/{positionId}/{startDate}/{endDate} - GET"
    - id: 19
      name: /requestLoan - POST
    - id: 20
      name: "/setParameter/{name}/{value} - POST"
    - id: 21
      name: /shutdownJmsListener - POST
    - id: 22
      name: /startupJmsListener - POST
    - id: 23
      name: "/transactions/{transactionId} - GET"
    - id: 24
      name: /transfer - POST
    - id: 25
      name: /withdraw - POST
  notes: "Created from: http://192.168.56.101:8080/parabank/services/bank/swagger.yaml\r\
    \nTimestamp: 2019-06-17 17:37:16"
  profileMappingID: 0
  maxProfileMappingID: 36
  propertyOwner:
    properties:
    - $type: DbAccountProperty
      name: Parabank HSQL DB
      account:
        local:
          $type: DbConfigSettings
          password: AwAAAAA=
          uri: "jdbc:hsqldb:${DATABASE_CONNECTION_STRING}"
          username: sa
          driver: org.hsqldb.jdbcDriver
  nextIdentifier: 865
  tests:
  - $type: TestSuite
    testLogic: true
    testFlowLogic:
      condition: true
    testID: 806
    name: /parabank/services/bank/openapi.yaml
    profileMappingID: 1
    tests:
    - $type: TestSuite
      testLogic: true
      testID: 807
      enabled: true
      name: "/accounts/{accountId}"
      profileMappingID: 2
      tests:
      - $type: RESTClientToolTest
        testLogic: true
        testID: 808
        enabled: true
        name: "/accounts/{accountId} - GET"
        performanceGroup: 0
        tool:
          $type: RESTClient
          iconName: RESTClient
          name: "/accounts/{accountId} - GET"
          formJson:
            value:
              $type: ElementValue
              writeType: true
              type:
                $type: ElementType
                hash: 1
                localName: root
                bodyType:
                  $type: ComplexType
                  hash: 2
                  attributes:
                  - hash: 3
                    ns: ""
                    name: type
                    fixed: object
                    contentType:
                      $type: StringType
                      hash: 4
                    required: true
                  name: rootType
                  compositor: true
                  compositorObj:
                    $type: AllCompositor
                    hash: 5
              replacedColumn: ""
              values:
              - $type: ComplexValue
                replacedColumn: ""
                attributes:
                - replacedColumn: ""
                  value:
                    $type: StringValue
                    replacedColumn: ""
                    value: object
                  useValue: true
                compositorValue: true
                compositorValueObj:
                  replacedColumn: ""
                  values:
                    $type: CompositorValueSetCollectionSet
                    set:
                    - $type: CompositorValueSet
            elementTypeName: root
          hasServiceInfo: true
          serviceInfo:
            serviceDescriptor:
              $type: StandardServiceDescriptor
              location: http://18.237.146.177:8090/parabank/services/bank/openapi.yaml
            serviceName: ""
            versionName: ""
          jsonBuilder:
            hasValue: true
            value:
              $type: JSONObjectValue
              nameIsNull: true
          xmlBuilder: false
          schemaURL:
            MessagingClient_SchemaLocation: "${SWAGGER}"
          formInput:
            value:
              $type: ElementValue
              writeType: true
              type:
                $type: ElementType
                hash: 1
                localName: ""
                bodyType:
                  $type: ComplexType
                  hash: 2
                  name: anonymous
                  compositor: true
                  compositorObj:
                    $type: SequenceCompositor
                    hash: 3
              replacedColumn: ""
              values:
              - $type: ComplexValue
                replacedColumn: ""
                compositorValue: true
                compositorValueObj:
                  replacedColumn: ""
                  values:
                    $type: CompositorValueSetCollectionSet
                    set:
                    - $type: CompositorValueSet
          jmsMessageOutputProvider:
            $type: JMSMessageOutputProvider
            jmsOutputProviderRequest:
              $type: JMSOutputProvider
              name: Request Object
              menuName: Object
            jmsOutputProviderResponse:
              $type: JMSOutputProvider
              name: Response Message Object
              menuName: Message Object
          validResponseRange:
            validResponseRange:
              values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                validResponseRange: 200
          router:
            values:
            - $type: ScriptedValue
            fixedValue:
              $type: StringTestValue
              HTTPClient_Endpoint: "${BASEURL}/accounts/{accountId}"
          transportProperties:
            manager:
              protocol: 1
              properties:
              - $type: HTTPClientHTTPProperties
                followRedirects:
                  bool: true
                common:
                  method:
                    values:
                    - $type: ScriptedValue
                    fixedValue:
                      $type: HTTPMethodTestValue
                      method: GET
                  httpHeaders:
                    properties:
                    - name: Accept
                      value:
                        values:
                        - $type: ScriptedValue
                        fixedValue:
                          $type: StringTestValue
                          value: application/json
                protocol: 1
                keepAlive1_1:
                  bool: true
            messageExchangePattern:
              inverted: true
          outputProviders:
            requestHeader:
              $type: HTTPNamedToolOutputProvider
              menuName: Transport Header
              name: Request Transport Header
            responseHeader:
              $type: HTTPNamedToolOutputProvider
              menuName: Transport Header
              name: Response Transport Header
            xmlRequestOutput:
              $type: NamedXMLToolOutputProvider
              menuName: Traffic
              name: Request Traffic
            trafficOutput:
              m_name: Traffic Stream
            objectOutput:
              $type: ObjectOutputProvider
              outputTools:
              - $type: TrafficViewer
                iconName: TrafficViewer
                name: Traffic Viewer
                showRequestHeaders: true
                showResponseHeaders: true
              name: Traffic Object
          literal:
            use: 1
            text:
              MessagingClient_LiteralMessage: ""
              type: application/json
          mode: Literal
          literalQuery:
            isPropertiesRef: true
          literalPath:
            pathElements:
            - values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                value: accounts
            - values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                value: "{accountId}"
          constrainedPath:
            pathParameters:
            - $type: ElementValue
              writeType: true
              type:
                $type: ElementType
                hash: 1
                defaultValue: 0
                localName: accountId
                bodyType:
                  $type: IntegerType
                  hash: 2
              replacedColumn: ""
              values:
              - $type: IntegerValue
                replacedColumn: ""
                value: 0
          resourceMethod:
            resourceId: "/accounts/{accountId}"
            httpMethod: GET
          resourceMode: 3
          baseUrl:
            values:
            - $type: ScriptedValue
            - $type: WadlTestValue
              value: http://18.237.146.177:8090/parabank/services/bank
            fixedValue:
              $type: StringTestValue
              value: "${BASEURL}"
    - $type: TestSuite
      testLogic: true
      testID: 809
      enabled: true
      name: "/accounts/{accountId}/transactions"
      profileMappingID: 3
      tests:
      - $type: RESTClientToolTest
        testLogic: true
        testID: 810
        enabled: true
        name: "/accounts/{accountId}/transactions - GET"
        performanceGroup: 1
        tool:
          $type: RESTClient
          iconName: RESTClient
          name: "/accounts/{accountId}/transactions - GET"
          formJson:
            value:
              $type: ElementValue
              writeType: true
              hasReference: true
              qnameAsString: :root
              replacedColumn: ""
              values:
              - $type: ComplexValue
                replacedColumn: ""
                attributes:
                - replacedColumn: ""
                  value:
                    $type: StringValue
                    replacedColumn: ""
                    value: object
                  useValue: true
                compositorValue: true
                compositorValueObj:
                  replacedColumn: ""
                  values:
                    $type: CompositorValueSetCollectionSet
                    set:
                    - $type: CompositorValueSet
            elementTypeName: root
          hasServiceInfo: true
          serviceInfo:
            serviceDescriptor:
              $type: StandardServiceDescriptor
              location: http://18.237.146.177:8090/parabank/services/bank/openapi.yaml
            serviceName: ""
            versionName: ""
          jsonBuilder:
            hasValue: true
            value:
              $type: JSONObjectValue
              nameIsNull: true
          xmlBuilder: false
          schemaURL:
            MessagingClient_SchemaLocation: "${SWAGGER}"
          formInput:
            value:
              $type: ElementValue
              writeType: true
              hasReference: true
              qnameAsString: ":"
              replacedColumn: ""
              values:
              - $type: ComplexValue
                replacedColumn: ""
                compositorValue: true
                compositorValueObj:
                  replacedColumn: ""
                  values:
                    $type: CompositorValueSetCollectionSet
                    set:
                    - $type: CompositorValueSet
          jmsMessageOutputProvider:
            $type: JMSMessageOutputProvider
            jmsOutputProviderRequest:
              $type: JMSOutputProvider
              name: Request Object
              menuName: Object
            jmsOutputProviderResponse:
              $type: JMSOutputProvider
              name: Response Message Object
              menuName: Message Object
          validResponseRange:
            validResponseRange:
              values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                validResponseRange: 200
          router:
            values:
            - $type: ScriptedValue
            fixedValue:
              $type: StringTestValue
              HTTPClient_Endpoint: "${BASEURL}/accounts/{accountId}/transactions"
          transportProperties:
            manager:
              protocol: 1
              properties:
              - $type: HTTPClientHTTPProperties
                followRedirects:
                  bool: true
                common:
                  method:
                    values:
                    - $type: ScriptedValue
                    fixedValue:
                      $type: HTTPMethodTestValue
                      method: GET
                  httpHeaders:
                    properties:
                    - name: Accept
                      value:
                        values:
                        - $type: ScriptedValue
                        fixedValue:
                          $type: StringTestValue
                          value: application/json
                protocol: 1
                keepAlive1_1:
                  bool: true
            messageExchangePattern:
              inverted: true
          outputProviders:
            requestHeader:
              $type: HTTPNamedToolOutputProvider
              menuName: Transport Header
              name: Request Transport Header
            responseHeader:
              $type: HTTPNamedToolOutputProvider
              menuName: Transport Header
              name: Response Transport Header
            xmlRequestOutput:
              $type: NamedXMLToolOutputProvider
              menuName: Traffic
              name: Request Traffic
            trafficOutput:
              m_name: Traffic Stream
            objectOutput:
              $type: ObjectOutputProvider
              outputTools:
              - $type: TrafficViewer
                iconName: TrafficViewer
                name: Traffic Viewer
                showRequestHeaders: true
                showResponseHeaders: true
              name: Traffic Object
          literal:
            use: 1
            text:
              MessagingClient_LiteralMessage: ""
              type: application/json
          mode: Literal
          literalQuery:
            isPropertiesRef: true
          literalPath:
            pathElements:
            - values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                value: accounts
            - values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                value: "{accountId}"
            - values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                value: transactions
          constrainedPath:
            pathParameters:
            - $type: ElementValue
              writeType: true
              hasReference: true
              qnameAsString: :accountId
              replacedColumn: ""
              values:
              - $type: IntegerValue
                replacedColumn: ""
                value: 0
          resourceMethod:
            resourceId: "/accounts/{accountId}/transactions"
            httpMethod: GET
          resourceMode: 3
          baseUrl:
            values:
            - $type: ScriptedValue
            - $type: WadlTestValue
              value: http://18.237.146.177:8090/parabank/services/bank
            fixedValue:
              $type: StringTestValue
              value: "${BASEURL}"
    - $type: TestSuite
      testLogic: true
      testID: 811
      enabled: true
      name: "/accounts/{accountId}/transactions/amount/{amount}"
      profileMappingID: 4
      tests:
      - $type: RESTClientToolTest
        testLogic: true
        testID: 812
        enabled: true
        name: "/accounts/{accountId}/transactions/amount/{amount} - GET"
        performanceGroup: 2
        tool:
          $type: RESTClient
          iconName: RESTClient
          name: "/accounts/{accountId}/transactions/amount/{amount} - GET"
          formJson:
            value:
              $type: ElementValue
              writeType: true
              hasReference: true
              qnameAsString: :root
              replacedColumn: ""
              values:
              - $type: ComplexValue
                replacedColumn: ""
                attributes:
                - replacedColumn: ""
                  value:
                    $type: StringValue
                    replacedColumn: ""
                    value: object
                  useValue: true
                compositorValue: true
                compositorValueObj:
                  replacedColumn: ""
                  values:
                    $type: CompositorValueSetCollectionSet
                    set:
                    - $type: CompositorValueSet
            elementTypeName: root
          hasServiceInfo: true
          serviceInfo:
            serviceDescriptor:
              $type: StandardServiceDescriptor
              location: http://18.237.146.177:8090/parabank/services/bank/openapi.yaml
            serviceName: ""
            versionName: ""
          jsonBuilder:
            hasValue: true
            value:
              $type: JSONObjectValue
              nameIsNull: true
          xmlBuilder: false
          schemaURL:
            MessagingClient_SchemaLocation: "${SWAGGER}"
          formInput:
            value:
              $type: ElementValue
              writeType: true
              hasReference: true
              qnameAsString: ":"
              replacedColumn: ""
              values:
              - $type: ComplexValue
                replacedColumn: ""
                compositorValue: true
                compositorValueObj:
                  replacedColumn: ""
                  values:
                    $type: CompositorValueSetCollectionSet
                    set:
                    - $type: CompositorValueSet
          jmsMessageOutputProvider:
            $type: JMSMessageOutputProvider
            jmsOutputProviderRequest:
              $type: JMSOutputProvider
              name: Request Object
              menuName: Object
            jmsOutputProviderResponse:
              $type: JMSOutputProvider
              name: Response Message Object
              menuName: Message Object
          validResponseRange:
            validResponseRange:
              values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                validResponseRange: 200
          router:
            values:
            - $type: ScriptedValue
            fixedValue:
              $type: StringTestValue
              HTTPClient_Endpoint: "${BASEURL}/accounts/{accountId}/transactions/amount/{amount}"
          transportProperties:
            manager:
              protocol: 1
              properties:
              - $type: HTTPClientHTTPProperties
                followRedirects:
                  bool: true
                common:
                  method:
                    values:
                    - $type: ScriptedValue
                    fixedValue:
                      $type: HTTPMethodTestValue
                      method: GET
                  httpHeaders:
                    properties:
                    - name: Accept
                      value:
                        values:
                        - $type: ScriptedValue
                        fixedValue:
                          $type: StringTestValue
                          value: application/json
                protocol: 1
                keepAlive1_1:
                  bool: true
            messageExchangePattern:
              inverted: true
          outputProviders:
            requestHeader:
              $type: HTTPNamedToolOutputProvider
              menuName: Transport Header
              name: Request Transport Header
            responseHeader:
              $type: HTTPNamedToolOutputProvider
              menuName: Transport Header
              name: Response Transport Header
            xmlRequestOutput:
              $type: NamedXMLToolOutputProvider
              menuName: Traffic
              name: Request Traffic
            trafficOutput:
              m_name: Traffic Stream
            objectOutput:
              $type: ObjectOutputProvider
              outputTools:
              - $type: TrafficViewer
                iconName: TrafficViewer
                name: Traffic Viewer
                showRequestHeaders: true
                showResponseHeaders: true
              name: Traffic Object
          literal:
            use: 1
            text:
              MessagingClient_LiteralMessage: ""
              type: application/json
          mode: Literal
          literalQuery:
            isPropertiesRef: true
          literalPath:
            pathElements:
            - values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                value: accounts
            - values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                value: "{accountId}"
            - values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                value: transactions
            - values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                value: amount
            - values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                value: "{amount}"
          constrainedPath:
            pathParameters:
            - $type: ElementValue
              writeType: true
              hasReference: true
              qnameAsString: :accountId
              replacedColumn: ""
              values:
              - $type: IntegerValue
                replacedColumn: ""
                value: 0
            - $type: ElementValue
              writeType: true
              type:
                $type: ElementType
                hash: 1
                defaultValue: 0.0
                localName: amount
                bodyType:
                  $type: DecimalType
                  hash: 2
              replacedColumn: ""
              values:
              - $type: DecimalValue
                replacedColumn: ""
                value: 0.0
          resourceMethod:
            resourceId: "/accounts/{accountId}/transactions/amount/{amount}"
            httpMethod: GET
          resourceMode: 3
          baseUrl:
            values:
            - $type: ScriptedValue
            - $type: WadlTestValue
              value: http://18.237.146.177:8090/parabank/services/bank
            fixedValue:
              $type: StringTestValue
              value: "${BASEURL}"
    - $type: TestSuite
      testLogic: true
      testID: 813
      enabled: true
      name: "/accounts/{accountId}/transactions/fromDate/{fromDate}/toDate/{toDate}"
      profileMappingID: 5
      tests:
      - $type: RESTClientToolTest
        testLogic: true
        testID: 814
        enabled: true
        name: "/accounts/{accountId}/transactions/fromDate/{fromDate}/toDate/{toDate}\
          \ - GET"
        performanceGroup: 3
        tool:
          $type: RESTClient
          iconName: RESTClient
          name: "/accounts/{accountId}/transactions/fromDate/{fromDate}/toDate/{toDate}\
            \ - GET"
          formJson:
            value:
              $type: ElementValue
              writeType: true
              hasReference: true
              qnameAsString: :root
              replacedColumn: ""
              values:
              - $type: ComplexValue
                replacedColumn: ""
                attributes:
                - replacedColumn: ""
                  value:
                    $type: StringValue
                    replacedColumn: ""
                    value: object
                  useValue: true
                compositorValue: true
                compositorValueObj:
                  replacedColumn: ""
                  values:
                    $type: CompositorValueSetCollectionSet
                    set:
                    - $type: CompositorValueSet
            elementTypeName: root
          hasServiceInfo: true
          serviceInfo:
            serviceDescriptor:
              $type: StandardServiceDescriptor
              location: http://18.237.146.177:8090/parabank/services/bank/openapi.yaml
            serviceName: ""
            versionName: ""
          jsonBuilder:
            hasValue: true
            value:
              $type: JSONObjectValue
              nameIsNull: true
          xmlBuilder: false
          schemaURL:
            MessagingClient_SchemaLocation: "${SWAGGER}"
          formInput:
            value:
              $type: ElementValue
              writeType: true
              hasReference: true
              qnameAsString: ":"
              replacedColumn: ""
              values:
              - $type: ComplexValue
                replacedColumn: ""
                compositorValue: true
                compositorValueObj:
                  replacedColumn: ""
                  values:
                    $type: CompositorValueSetCollectionSet
                    set:
                    - $type: CompositorValueSet
          jmsMessageOutputProvider:
            $type: JMSMessageOutputProvider
            jmsOutputProviderRequest:
              $type: JMSOutputProvider
              name: Request Object
              menuName: Object
            jmsOutputProviderResponse:
              $type: JMSOutputProvider
              name: Response Message Object
              menuName: Message Object
          validResponseRange:
            validResponseRange:
              values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                validResponseRange: 200
          router:
            values:
            - $type: ScriptedValue
            fixedValue:
              $type: StringTestValue
              HTTPClient_Endpoint: "${BASEURL}/accounts/{accountId}/transactions/fromDate/{fromDate}/toDate/{toDate}"
          transportProperties:
            manager:
              protocol: 1
              properties:
              - $type: HTTPClientHTTPProperties
                followRedirects:
                  bool: true
                common:
                  method:
                    values:
                    - $type: ScriptedValue
                    fixedValue:
                      $type: HTTPMethodTestValue
                      method: GET
                  httpHeaders:
                    properties:
                    - name: Accept
                      value:
                        values:
                        - $type: ScriptedValue
                        fixedValue:
                          $type: StringTestValue
                          value: application/json
                protocol: 1
                keepAlive1_1:
                  bool: true
            messageExchangePattern:
              inverted: true
          outputProviders:
            requestHeader:
              $type: HTTPNamedToolOutputProvider
              menuName: Transport Header
              name: Request Transport Header
            responseHeader:
              $type: HTTPNamedToolOutputProvider
              menuName: Transport Header
              name: Response Transport Header
            xmlRequestOutput:
              $type: NamedXMLToolOutputProvider
              menuName: Traffic
              name: Request Traffic
            trafficOutput:
              m_name: Traffic Stream
            objectOutput:
              $type: ObjectOutputProvider
              outputTools:
              - $type: TrafficViewer
                iconName: TrafficViewer
                name: Traffic Viewer
                showRequestHeaders: true
                showResponseHeaders: true
              name: Traffic Object
          literal:
            use: 1
            text:
              MessagingClient_LiteralMessage: ""
              type: application/json
          mode: Literal
          literalQuery:
            isPropertiesRef: true
          literalPath:
            pathElements:
            - values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                value: accounts
            - values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                value: "{accountId}"
            - values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                value: transactions
            - values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                value: fromDate
            - values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                value: "{fromDate}"
            - values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                value: toDate
            - values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                value: "{toDate}"
          constrainedPath:
            pathParameters:
            - $type: ElementValue
              writeType: true
              hasReference: true
              qnameAsString: :accountId
              replacedColumn: ""
              values:
              - $type: IntegerValue
                replacedColumn: ""
                value: 0
            - $type: ElementValue
              writeType: true
              type:
                $type: ElementType
                hash: 1
                localName: fromDate
                bodyType:
                  $type: StringType
                  hash: 2
              replacedColumn: ""
              values:
              - $type: StringValue
                replacedColumn: ""
                value: ""
            - $type: ElementValue
              writeType: true
              type:
                $type: ElementType
                hash: 1
                localName: toDate
                bodyType:
                  $type: StringType
                  hash: 2
              replacedColumn: ""
              values:
              - $type: StringValue
                replacedColumn: ""
                value: ""
          resourceMethod:
            resourceId: "/accounts/{accountId}/transactions/fromDate/{fromDate}/toDate/{toDate}"
            httpMethod: GET
          resourceMode: 3
          baseUrl:
            values:
            - $type: ScriptedValue
            - $type: WadlTestValue
              value: http://18.237.146.177:8090/parabank/services/bank
            fixedValue:
              $type: StringTestValue
              value: "${BASEURL}"
    - $type: TestSuite
      testLogic: true
      testID: 815
      enabled: true
      name: "/accounts/{accountId}/transactions/month/{month}/type/{type}"
      profileMappingID: 6
      tests:
      - $type: RESTClientToolTest
        testLogic: true
        testID: 816
        enabled: true
        name: "/accounts/{accountId}/transactions/month/{month}/type/{type} - GET"
        performanceGroup: 4
        tool:
          $type: RESTClient
          iconName: RESTClient
          name: "/accounts/{accountId}/transactions/month/{month}/type/{type} - GET"
          formJson:
            value:
              $type: ElementValue
              writeType: true
              hasReference: true
              qnameAsString: :root
              replacedColumn: ""
              values:
              - $type: ComplexValue
                replacedColumn: ""
                attributes:
                - replacedColumn: ""
                  value:
                    $type: StringValue
                    replacedColumn: ""
                    value: object
                  useValue: true
                compositorValue: true
                compositorValueObj:
                  replacedColumn: ""
                  values:
                    $type: CompositorValueSetCollectionSet
                    set:
                    - $type: CompositorValueSet
            elementTypeName: root
          hasServiceInfo: true
          serviceInfo:
            serviceDescriptor:
              $type: StandardServiceDescriptor
              location: http://18.237.146.177:8090/parabank/services/bank/openapi.yaml
            serviceName: ""
            versionName: ""
          jsonBuilder:
            hasValue: true
            value:
              $type: JSONObjectValue
              nameIsNull: true
          xmlBuilder: false
          schemaURL:
            MessagingClient_SchemaLocation: "${SWAGGER}"
          formInput:
            value:
              $type: ElementValue
              writeType: true
              hasReference: true
              qnameAsString: ":"
              replacedColumn: ""
              values:
              - $type: ComplexValue
                replacedColumn: ""
                compositorValue: true
                compositorValueObj:
                  replacedColumn: ""
                  values:
                    $type: CompositorValueSetCollectionSet
                    set:
                    - $type: CompositorValueSet
          jmsMessageOutputProvider:
            $type: JMSMessageOutputProvider
            jmsOutputProviderRequest:
              $type: JMSOutputProvider
              name: Request Object
              menuName: Object
            jmsOutputProviderResponse:
              $type: JMSOutputProvider
              name: Response Message Object
              menuName: Message Object
          validResponseRange:
            validResponseRange:
              values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                validResponseRange: 200
          router:
            values:
            - $type: ScriptedValue
            fixedValue:
              $type: StringTestValue
              HTTPClient_Endpoint: "${BASEURL}/accounts/{accountId}/transactions/month/{month}/type/{type}"
          transportProperties:
            manager:
              protocol: 1
              properties:
              - $type: HTTPClientHTTPProperties
                followRedirects:
                  bool: true
                common:
                  method:
                    values:
                    - $type: ScriptedValue
                    fixedValue:
                      $type: HTTPMethodTestValue
                      method: GET
                  httpHeaders:
                    properties:
                    - name: Accept
                      value:
                        values:
                        - $type: ScriptedValue
                        fixedValue:
                          $type: StringTestValue
                          value: application/json
                protocol: 1
                keepAlive1_1:
                  bool: true
            messageExchangePattern:
              inverted: true
          outputProviders:
            requestHeader:
              $type: HTTPNamedToolOutputProvider
              menuName: Transport Header
              name: Request Transport Header
            responseHeader:
              $type: HTTPNamedToolOutputProvider
              menuName: Transport Header
              name: Response Transport Header
            xmlRequestOutput:
              $type: NamedXMLToolOutputProvider
              menuName: Traffic
              name: Request Traffic
            trafficOutput:
              m_name: Traffic Stream
            objectOutput:
              $type: ObjectOutputProvider
              outputTools:
              - $type: TrafficViewer
                iconName: TrafficViewer
                name: Traffic Viewer
                showRequestHeaders: true
                showResponseHeaders: true
              name: Traffic Object
          literal:
            use: 1
            text:
              MessagingClient_LiteralMessage: ""
              type: application/json
          mode: Literal
          literalQuery:
            isPropertiesRef: true
          literalPath:
            pathElements:
            - values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                value: accounts
            - values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                value: "{accountId}"
            - values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                value: transactions
            - values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                value: month
            - values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                value: "{month}"
            - values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                value: type
            - values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                value: "{type}"
          constrainedPath:
            pathParameters:
            - $type: ElementValue
              writeType: true
              hasReference: true
              qnameAsString: :accountId
              replacedColumn: ""
              values:
              - $type: IntegerValue
                replacedColumn: ""
                value: 0
            - $type: ElementValue
              writeType: true
              type:
                $type: ElementType
                hash: 1
                localName: month
                bodyType:
                  $type: StringType
                  hash: 2
              replacedColumn: ""
              values:
              - $type: StringValue
                replacedColumn: ""
                value: ""
            - $type: ElementValue
              writeType: true
              type:
                $type: ElementType
                hash: 1
                localName: type
                bodyType:
                  $type: StringType
                  hash: 2
              replacedColumn: ""
              values:
              - $type: StringValue
                replacedColumn: ""
                value: ""
          resourceMethod:
            resourceId: "/accounts/{accountId}/transactions/month/{month}/type/{type}"
            httpMethod: GET
          resourceMode: 3
          baseUrl:
            values:
            - $type: ScriptedValue
            - $type: WadlTestValue
              value: http://18.237.146.177:8090/parabank/services/bank
            fixedValue:
              $type: StringTestValue
              value: "${BASEURL}"
    - $type: TestSuite
      testLogic: true
      testID: 817
      enabled: true
      name: "/accounts/{accountId}/transactions/onDate/{onDate}"
      profileMappingID: 7
      tests:
      - $type: RESTClientToolTest
        testLogic: true
        testID: 818
        enabled: true
        name: "/accounts/{accountId}/transactions/onDate/{onDate} - GET"
        performanceGroup: 5
        tool:
          $type: RESTClient
          iconName: RESTClient
          name: "/accounts/{accountId}/transactions/onDate/{onDate} - GET"
          formJson:
            value:
              $type: ElementValue
              writeType: true
              hasReference: true
              qnameAsString: :root
              replacedColumn: ""
              values:
              - $type: ComplexValue
                replacedColumn: ""
                attributes:
                - replacedColumn: ""
                  value:
                    $type: StringValue
                    replacedColumn: ""
                    value: object
                  useValue: true
                compositorValue: true
                compositorValueObj:
                  replacedColumn: ""
                  values:
                    $type: CompositorValueSetCollectionSet
                    set:
                    - $type: CompositorValueSet
            elementTypeName: root
          hasServiceInfo: true
          serviceInfo:
            serviceDescriptor:
              $type: StandardServiceDescriptor
              location: http://18.237.146.177:8090/parabank/services/bank/openapi.yaml
            serviceName: ""
            versionName: ""
          jsonBuilder:
            hasValue: true
            value:
              $type: JSONObjectValue
              nameIsNull: true
          xmlBuilder: false
          schemaURL:
            MessagingClient_SchemaLocation: "${SWAGGER}"
          formInput:
            value:
              $type: ElementValue
              writeType: true
              hasReference: true
              qnameAsString: ":"
              replacedColumn: ""
              values:
              - $type: ComplexValue
                replacedColumn: ""
                compositorValue: true
                compositorValueObj:
                  replacedColumn: ""
                  values:
                    $type: CompositorValueSetCollectionSet
                    set:
                    - $type: CompositorValueSet
          jmsMessageOutputProvider:
            $type: JMSMessageOutputProvider
            jmsOutputProviderRequest:
              $type: JMSOutputProvider
              name: Request Object
              menuName: Object
            jmsOutputProviderResponse:
              $type: JMSOutputProvider
              name: Response Message Object
              menuName: Message Object
          validResponseRange:
            validResponseRange:
              values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                validResponseRange: 200
          router:
            values:
            - $type: ScriptedValue
            fixedValue:
              $type: StringTestValue
              HTTPClient_Endpoint: "${BASEURL}/accounts/{accountId}/transactions/onDate/{onDate}"
          transportProperties:
            manager:
              protocol: 1
              properties:
              - $type: HTTPClientHTTPProperties
                followRedirects:
                  bool: true
                common:
                  method:
                    values:
                    - $type: ScriptedValue
                    fixedValue:
                      $type: HTTPMethodTestValue
                      method: GET
                  httpHeaders:
                    properties:
                    - name: Accept
                      value:
                        values:
                        - $type: ScriptedValue
                        fixedValue:
                          $type: StringTestValue
                          value: application/json
                protocol: 1
                keepAlive1_1:
                  bool: true
            messageExchangePattern:
              inverted: true
          outputProviders:
            requestHeader:
              $type: HTTPNamedToolOutputProvider
              menuName: Transport Header
              name: Request Transport Header
            responseHeader:
              $type: HTTPNamedToolOutputProvider
              menuName: Transport Header
              name: Response Transport Header
            xmlRequestOutput:
              $type: NamedXMLToolOutputProvider
              menuName: Traffic
              name: Request Traffic
            trafficOutput:
              m_name: Traffic Stream
            objectOutput:
              $type: ObjectOutputProvider
              outputTools:
              - $type: TrafficViewer
                iconName: TrafficViewer
                name: Traffic Viewer
                showRequestHeaders: true
                showResponseHeaders: true
              name: Traffic Object
          literal:
            use: 1
            text:
              MessagingClient_LiteralMessage: ""
              type: application/json
          mode: Literal
          literalQuery:
            isPropertiesRef: true
          literalPath:
            pathElements:
            - values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                value: accounts
            - values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                value: "{accountId}"
            - values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                value: transactions
            - values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                value: onDate
            - values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                value: "{onDate}"
          constrainedPath:
            pathParameters:
            - $type: ElementValue
              writeType: true
              hasReference: true
              qnameAsString: :accountId
              replacedColumn: ""
              values:
              - $type: IntegerValue
                replacedColumn: ""
                value: 0
            - $type: ElementValue
              writeType: true
              type:
                $type: ElementType
                hash: 1
                localName: onDate
                bodyType:
                  $type: StringType
                  hash: 2
              replacedColumn: ""
              values:
              - $type: StringValue
                replacedColumn: ""
                value: ""
          resourceMethod:
            resourceId: "/accounts/{accountId}/transactions/onDate/{onDate}"
            httpMethod: GET
          resourceMode: 3
          baseUrl:
            values:
            - $type: ScriptedValue
            - $type: WadlTestValue
              value: http://18.237.146.177:8090/parabank/services/bank
            fixedValue:
              $type: StringTestValue
              value: "${BASEURL}"
    - $type: TestSuite
      testLogic: true
      testID: 819
      enabled: true
      name: /billpay
      profileMappingID: 8
      tests:
      - $type: RESTClientToolTest
        testLogic: true
        testID: 820
        enabled: true
        name: /billpay - POST
        performanceGroup: 6
        tool:
          $type: RESTClient
          iconName: RESTClient
          name: /billpay - POST
          formJson:
            builtFromSchema: true
            value:
              $type: ElementValue
              writeType: true
              type:
                $type: ElementType
                hash: 1
                localName: root
                bodyType:
                  $type: ComplexType
                  hash: 2
                  attributes:
                  - hash: 3
                    ns: ""
                    name: type
                    defaultValue: object
                    fixed: object
                    contentType:
                      $type: StringType
                      hash: 4
                    required: true
                  name: /components/schemas/Payee
                  compositor: true
                  compositorObj:
                    $type: AllCompositor
                    hash: 5
                    types:
                    - $type: ElementType
                      hash: 6
                      minOccurs: 0
                      localName: name
                      bodyType:
                        $type: ComplexType
                        hash: 7
                        attributes:
                        - hash: 8
                          ns: ""
                          name: type
                          defaultValue: string
                          fixed: string
                          contentType:
                            $type: StringType
                            hash: 4
                          required: true
                        content: true
                        contentObj:
                          $type: StringType
                          hash: 4
                        namespace: urn:parasoft:json
                        name: string
                        compositor: true
                        compositorObj:
                          $type: SequenceCompositor
                          hash: 9
                    - $type: ElementType
                      hash: 10
                      minOccurs: 0
                      localName: address
                      bodyType:
                        $type: ComplexType
                        hash: 11
                        attributes:
                        - hash: 12
                          ns: ""
                          name: type
                          defaultValue: object
                          fixed: object
                          contentType:
                            $type: StringType
                            hash: 4
                          required: true
                        name: /components/schemas/Address
                        compositor: true
                        compositorObj:
                          $type: AllCompositor
                          hash: 13
                          types:
                          - $type: ElementType
                            hash: 14
                            minOccurs: 0
                            localName: street
                            bodyType:
                              $type: ComplexType
                              hash: 7
                          - $type: ElementType
                            hash: 15
                            minOccurs: 0
                            localName: city
                            bodyType:
                              $type: ComplexType
                              hash: 7
                          - $type: ElementType
                            hash: 16
                            minOccurs: 0
                            localName: state
                            bodyType:
                              $type: ComplexType
                              hash: 7
                          - $type: ElementType
                            hash: 17
                            minOccurs: 0
                            localName: zipCode
                            bodyType:
                              $type: ComplexType
                              hash: 7
                    - $type: ElementType
                      hash: 18
                      minOccurs: 0
                      localName: phoneNumber
                      bodyType:
                        $type: ComplexType
                        hash: 7
                    - $type: ElementType
                      hash: 19
                      minOccurs: 0
                      localName: accountNumber
                      bodyType:
                        $type: ComplexType
                        hash: 20
                        attributes:
                        - hash: 21
                          ns: ""
                          name: type
                          defaultValue: number
                          fixed: number
                          contentType:
                            $type: StringType
                            hash: 4
                          required: true
                        content: true
                        contentObj:
                          $type: IntegerType
                          hash: 22
                        namespace: urn:parasoft:json
                        name: number
                        compositor: true
                        compositorObj:
                          $type: SequenceCompositor
                          hash: 23
              replacedColumn: ""
              values:
              - $type: ComplexValue
                replacedColumn: ""
                attributes:
                - replacedColumn: ""
                  value:
                    $type: StringValue
                    replacedColumn: ""
                    value: object
                  useValue: true
                compositorValue: true
                compositorValueObj:
                  replacedColumn: ""
                  values:
                    $type: CompositorValueSetCollectionSet
                    set:
                    - $type: CompositorValueSet
                      values:
                      - $type: ElementValue
                        replacedColumn: ""
                      - $type: ElementValue
                        replacedColumn: ""
                      - $type: ElementValue
                        replacedColumn: ""
                      - $type: ElementValue
                        replacedColumn: ""
            elementTypeName: root
          hasServiceInfo: true
          serviceInfo:
            serviceDescriptor:
              $type: StandardServiceDescriptor
              location: http://18.237.146.177:8090/parabank/services/bank/openapi.yaml
            serviceName: ""
            versionName: ""
          jsonBuilder:
            hasValue: true
            value:
              $type: JSONObjectValue
              nameIsNull: true
          xmlBuilder: false
          schemaURL:
            MessagingClient_SchemaLocation: "${SWAGGER}"
          formInput:
            value:
              $type: ElementValue
              writeType: true
              hasReference: true
              qnameAsString: ":"
              replacedColumn: ""
              values:
              - $type: ComplexValue
                replacedColumn: ""
                compositorValue: true
                compositorValueObj:
                  replacedColumn: ""
                  values:
                    $type: CompositorValueSetCollectionSet
                    set:
                    - $type: CompositorValueSet
          jmsMessageOutputProvider:
            $type: JMSMessageOutputProvider
            jmsOutputProviderRequest:
              $type: JMSOutputProvider
              name: Request Object
              menuName: Object
            jmsOutputProviderResponse:
              $type: JMSOutputProvider
              name: Response Message Object
              menuName: Message Object
          validResponseRange:
            validResponseRange:
              values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                validResponseRange: 200
          router:
            values:
            - $type: ScriptedValue
            fixedValue:
              $type: StringTestValue
              HTTPClient_Endpoint: "${BASEURL}/billpay?accountId=0&amount=0.0"
          urlParameters:
            properties:
            - name: accountId
              value:
                values:
                - $type: ScriptedValue
                fixedValue:
                  $type: StringTestValue
                  value: 0
            - name: amount
              value:
                values:
                - $type: ScriptedValue
                fixedValue:
                  $type: StringTestValue
                  value: 0.0
          transportProperties:
            manager:
              protocol: 1
              properties:
              - $type: HTTPClientHTTPProperties
                followRedirects:
                  bool: true
                common:
                  method:
                    values:
                    - $type: ScriptedValue
                    fixedValue:
                      $type: HTTPMethodTestValue
                      method: POST
                  httpHeaders:
                    properties:
                    - name: Accept
                      value:
                        values:
                        - $type: ScriptedValue
                        fixedValue:
                          $type: StringTestValue
                          value: application/json
                protocol: 1
                keepAlive1_1:
                  bool: true
            messageExchangePattern:
              inverted: true
          outputProviders:
            requestHeader:
              $type: HTTPNamedToolOutputProvider
              menuName: Transport Header
              name: Request Transport Header
            responseHeader:
              $type: HTTPNamedToolOutputProvider
              menuName: Transport Header
              name: Response Transport Header
            xmlRequestOutput:
              $type: NamedXMLToolOutputProvider
              menuName: Traffic
              name: Request Traffic
            trafficOutput:
              m_name: Traffic Stream
            objectOutput:
              $type: ObjectOutputProvider
              outputTools:
              - $type: TrafficViewer
                iconName: TrafficViewer
                name: Traffic Viewer
                showRequestHeaders: true
                showResponseHeaders: true
              name: Traffic Object
          literal:
            use: 1
            text:
              MessagingClient_LiteralMessage: "{}"
              type: application/json
          mode: Form JSON
          literalQuery:
            isPropertiesRef: true
          constrainedQuery:
            parameters:
            - $type: ElementValue
              writeType: true
              hasReference: true
              qnameAsString: :accountId
              replacedColumn: ""
              values:
              - $type: IntegerValue
                replacedColumn: ""
                value: 0
            - $type: ElementValue
              writeType: true
              hasReference: true
              qnameAsString: :amount
              replacedColumn: ""
              values:
              - $type: DecimalValue
                replacedColumn: ""
                value: 0.0
          literalPath:
            pathElements:
            - values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                value: billpay
          resourceMethod:
            resourceId: /billpay
            httpMethod: POST
          resourceMode: 3
          baseUrl:
            values:
            - $type: ScriptedValue
            - $type: WadlTestValue
              value: http://18.237.146.177:8090/parabank/services/bank
            fixedValue:
              $type: StringTestValue
              value: "${BASEURL}"
    - $type: TestSuite
      testLogic: true
      testID: 821
      enabled: true
      name: /cleanDB
      profileMappingID: 9
      tests:
      - $type: RESTClientToolTest
        testLogic: true
        testID: 822
        enabled: true
        name: /cleanDB - POST
        performanceGroup: 7
        tool:
          $type: RESTClient
          iconName: RESTClient
          name: /cleanDB - POST
          formJson:
            value:
              $type: ElementValue
              writeType: true
              type:
                $type: ElementType
                hash: 1
                localName: root
                bodyType:
                  $type: ComplexType
                  hash: 2
                  attributes:
                  - hash: 3
                    ns: ""
                    name: type
                    fixed: object
                    contentType:
                      $type: StringType
                      hash: 4
                    required: true
                  name: rootType
                  compositor: true
                  compositorObj:
                    $type: AllCompositor
                    hash: 5
              replacedColumn: ""
              values:
              - $type: ComplexValue
                replacedColumn: ""
                attributes:
                - replacedColumn: ""
                  value:
                    $type: StringValue
                    replacedColumn: ""
                    value: object
                  useValue: true
                compositorValue: true
                compositorValueObj:
                  replacedColumn: ""
                  values:
                    $type: CompositorValueSetCollectionSet
                    set:
                    - $type: CompositorValueSet
            elementTypeName: root
          hasServiceInfo: true
          serviceInfo:
            serviceDescriptor:
              $type: StandardServiceDescriptor
              location: http://18.237.146.177:8090/parabank/services/bank/openapi.yaml
            serviceName: ""
            versionName: ""
          jsonBuilder:
            hasValue: true
            value:
              $type: JSONObjectValue
              nameIsNull: true
          xmlBuilder: false
          schemaURL:
            MessagingClient_SchemaLocation: "${SWAGGER}"
          formInput:
            value:
              $type: ElementValue
              writeType: true
              hasReference: true
              qnameAsString: ":"
              replacedColumn: ""
              values:
              - $type: ComplexValue
                replacedColumn: ""
                compositorValue: true
                compositorValueObj:
                  replacedColumn: ""
                  values:
                    $type: CompositorValueSetCollectionSet
                    set:
                    - $type: CompositorValueSet
          jmsMessageOutputProvider:
            $type: JMSMessageOutputProvider
            jmsOutputProviderRequest:
              $type: JMSOutputProvider
              name: Request Object
              menuName: Object
            jmsOutputProviderResponse:
              $type: JMSOutputProvider
              name: Response Message Object
              menuName: Message Object
          validResponseRange:
            validResponseRange:
              values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                validResponseRange: 200
          router:
            values:
            - $type: ScriptedValue
            fixedValue:
              $type: StringTestValue
              HTTPClient_Endpoint: "${BASEURL}/cleanDB"
          transportProperties:
            manager:
              protocol: 1
              properties:
              - $type: HTTPClientHTTPProperties
                followRedirects:
                  bool: true
                common:
                  method:
                    values:
                    - $type: ScriptedValue
                    fixedValue:
                      $type: HTTPMethodTestValue
                      method: POST
                  httpHeaders:
                    properties:
                    - name: Accept
                      value:
                        values:
                        - $type: ScriptedValue
                        fixedValue:
                          $type: StringTestValue
                          value: application/json
                protocol: 1
                keepAlive1_1:
                  bool: true
            messageExchangePattern:
              inverted: true
          outputProviders:
            requestHeader:
              $type: HTTPNamedToolOutputProvider
              menuName: Transport Header
              name: Request Transport Header
            responseHeader:
              $type: HTTPNamedToolOutputProvider
              menuName: Transport Header
              name: Response Transport Header
            xmlRequestOutput:
              $type: NamedXMLToolOutputProvider
              menuName: Traffic
              name: Request Traffic
            trafficOutput:
              m_name: Traffic Stream
            objectOutput:
              $type: ObjectOutputProvider
              outputTools:
              - $type: TrafficViewer
                iconName: TrafficViewer
                name: Traffic Viewer
                showRequestHeaders: true
                showResponseHeaders: true
              name: Traffic Object
          literal:
            use: 1
            text:
              MessagingClient_LiteralMessage: ""
              type: application/json
          mode: Literal
          literalQuery:
            isPropertiesRef: true
          literalPath:
            pathElements:
            - values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                value: cleanDB
          resourceMethod:
            resourceId: /cleanDB
            httpMethod: POST
          resourceMode: 3
          baseUrl:
            values:
            - $type: ScriptedValue
            - $type: WadlTestValue
              value: http://18.237.146.177:8090/parabank/services/bank
            fixedValue:
              $type: StringTestValue
              value: "${BASEURL}"
    - $type: TestSuite
      testLogic: true
      testID: 823
      enabled: true
      name: /createAccount
      profileMappingID: 10
      tests:
      - $type: RESTClientToolTest
        testLogic: true
        testID: 824
        enabled: true
        name: /createAccount - POST
        performanceGroup: 8
        tool:
          $type: RESTClient
          iconName: RESTClient
          name: /createAccount - POST
          formJson:
            value:
              $type: ElementValue
              writeType: true
              hasReference: true
              qnameAsString: :root
              replacedColumn: ""
              values:
              - $type: ComplexValue
                replacedColumn: ""
                attributes:
                - replacedColumn: ""
                  value:
                    $type: StringValue
                    replacedColumn: ""
                    value: object
                  useValue: true
                compositorValue: true
                compositorValueObj:
                  replacedColumn: ""
                  values:
                    $type: CompositorValueSetCollectionSet
                    set:
                    - $type: CompositorValueSet
            elementTypeName: root
          hasServiceInfo: true
          serviceInfo:
            serviceDescriptor:
              $type: StandardServiceDescriptor
              location: http://18.237.146.177:8090/parabank/services/bank/openapi.yaml
            serviceName: ""
            versionName: ""
          jsonBuilder:
            hasValue: true
            value:
              $type: JSONObjectValue
              nameIsNull: true
          xmlBuilder: false
          schemaURL:
            MessagingClient_SchemaLocation: "${SWAGGER}"
          formInput:
            value:
              $type: ElementValue
              writeType: true
              hasReference: true
              qnameAsString: ":"
              replacedColumn: ""
              values:
              - $type: ComplexValue
                replacedColumn: ""
                compositorValue: true
                compositorValueObj:
                  replacedColumn: ""
                  values:
                    $type: CompositorValueSetCollectionSet
                    set:
                    - $type: CompositorValueSet
          jmsMessageOutputProvider:
            $type: JMSMessageOutputProvider
            jmsOutputProviderRequest:
              $type: JMSOutputProvider
              name: Request Object
              menuName: Object
            jmsOutputProviderResponse:
              $type: JMSOutputProvider
              name: Response Message Object
              menuName: Message Object
          validResponseRange:
            validResponseRange:
              values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                validResponseRange: 200
          router:
            values:
            - $type: ScriptedValue
            fixedValue:
              $type: StringTestValue
              HTTPClient_Endpoint: "${BASEURL}/createAccount?customerId=0&newAccountType=0&fromAccountId=0"
          urlParameters:
            properties:
            - name: customerId
              value:
                values:
                - $type: ScriptedValue
                fixedValue:
                  $type: StringTestValue
                  value: 0
            - name: newAccountType
              value:
                values:
                - $type: ScriptedValue
                fixedValue:
                  $type: StringTestValue
                  value: 0
            - name: fromAccountId
              value:
                values:
                - $type: ScriptedValue
                fixedValue:
                  $type: StringTestValue
                  value: 0
          transportProperties:
            manager:
              protocol: 1
              properties:
              - $type: HTTPClientHTTPProperties
                followRedirects:
                  bool: true
                common:
                  method:
                    values:
                    - $type: ScriptedValue
                    fixedValue:
                      $type: HTTPMethodTestValue
                      method: POST
                  httpHeaders:
                    properties:
                    - name: Accept
                      value:
                        values:
                        - $type: ScriptedValue
                        fixedValue:
                          $type: StringTestValue
                          value: application/json
                protocol: 1
                keepAlive1_1:
                  bool: true
            messageExchangePattern:
              inverted: true
          outputProviders:
            requestHeader:
              $type: HTTPNamedToolOutputProvider
              menuName: Transport Header
              name: Request Transport Header
            responseHeader:
              $type: HTTPNamedToolOutputProvider
              menuName: Transport Header
              name: Response Transport Header
            xmlRequestOutput:
              $type: NamedXMLToolOutputProvider
              menuName: Traffic
              name: Request Traffic
            trafficOutput:
              m_name: Traffic Stream
            objectOutput:
              $type: ObjectOutputProvider
              outputTools:
              - $type: TrafficViewer
                iconName: TrafficViewer
                name: Traffic Viewer
                showRequestHeaders: true
                showResponseHeaders: true
              name: Traffic Object
          literal:
            use: 1
            text:
              MessagingClient_LiteralMessage: ""
              type: application/json
          mode: Literal
          literalQuery:
            isPropertiesRef: true
          constrainedQuery:
            parameters:
            - $type: ElementValue
              writeType: true
              type:
                $type: ElementType
                hash: 1
                defaultValue: 0
                localName: customerId
                bodyType:
                  $type: IntegerType
                  hash: 2
              replacedColumn: ""
              values:
              - $type: IntegerValue
                replacedColumn: ""
                value: 0
            - $type: ElementValue
              writeType: true
              type:
                $type: ElementType
                hash: 1
                defaultValue: 0
                localName: newAccountType
                bodyType:
                  $type: IntegerType
                  hash: 2
              replacedColumn: ""
              values:
              - $type: IntegerValue
                replacedColumn: ""
                value: 0
            - $type: ElementValue
              writeType: true
              type:
                $type: ElementType
                hash: 1
                defaultValue: 0
                localName: fromAccountId
                bodyType:
                  $type: IntegerType
                  hash: 2
              replacedColumn: ""
              values:
              - $type: IntegerValue
                replacedColumn: ""
                value: 0
          literalPath:
            pathElements:
            - values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                value: createAccount
          resourceMethod:
            resourceId: /createAccount
            httpMethod: POST
          resourceMode: 3
          baseUrl:
            values:
            - $type: ScriptedValue
            - $type: WadlTestValue
              value: http://18.237.146.177:8090/parabank/services/bank
            fixedValue:
              $type: StringTestValue
              value: "${BASEURL}"
    - $type: TestSuite
      testLogic: true
      testID: 825
      enabled: true
      name: "/customers/update/{customerId}"
      profileMappingID: 11
      tests:
      - $type: RESTClientToolTest
        testLogic: true
        testID: 826
        enabled: true
        name: "/customers/update/{customerId} - POST"
        performanceGroup: 9
        tool:
          $type: RESTClient
          iconName: RESTClient
          name: "/customers/update/{customerId} - POST"
          formJson:
            value:
              $type: ElementValue
              writeType: true
              hasReference: true
              qnameAsString: :root
              replacedColumn: ""
              values:
              - $type: ComplexValue
                replacedColumn: ""
                attributes:
                - replacedColumn: ""
                  value:
                    $type: StringValue
                    replacedColumn: ""
                    value: object
                  useValue: true
                compositorValue: true
                compositorValueObj:
                  replacedColumn: ""
                  values:
                    $type: CompositorValueSetCollectionSet
                    set:
                    - $type: CompositorValueSet
            elementTypeName: root
          hasServiceInfo: true
          serviceInfo:
            serviceDescriptor:
              $type: StandardServiceDescriptor
              location: http://18.237.146.177:8090/parabank/services/bank/openapi.yaml
            serviceName: ""
            versionName: ""
          jsonBuilder:
            hasValue: true
            value:
              $type: JSONObjectValue
              nameIsNull: true
          xmlBuilder: false
          schemaURL:
            MessagingClient_SchemaLocation: "${SWAGGER}"
          formInput:
            value:
              $type: ElementValue
              writeType: true
              hasReference: true
              qnameAsString: ":"
              replacedColumn: ""
              values:
              - $type: ComplexValue
                replacedColumn: ""
                compositorValue: true
                compositorValueObj:
                  replacedColumn: ""
                  values:
                    $type: CompositorValueSetCollectionSet
                    set:
                    - $type: CompositorValueSet
          jmsMessageOutputProvider:
            $type: JMSMessageOutputProvider
            jmsOutputProviderRequest:
              $type: JMSOutputProvider
              name: Request Object
              menuName: Object
            jmsOutputProviderResponse:
              $type: JMSOutputProvider
              name: Response Message Object
              menuName: Message Object
          validResponseRange:
            validResponseRange:
              values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                validResponseRange: 200
          router:
            values:
            - $type: ScriptedValue
            fixedValue:
              $type: StringTestValue
              HTTPClient_Endpoint: "${BASEURL}/customers/update/{customerId}?firstName=&lastName=&street=&city=&state=&zipCode=&phoneNumber=&ssn=&username=&password="
          urlParameters:
            properties:
            - $type: QueryParameterNameValuePair
              name: firstName
              value:
                values:
                - $type: ScriptedValue
                fixedValue:
                  $type: StringTestValue
              hasEqualsForEmptyValue: true
            - $type: QueryParameterNameValuePair
              name: lastName
              value:
                values:
                - $type: ScriptedValue
                fixedValue:
                  $type: StringTestValue
              hasEqualsForEmptyValue: true
            - $type: QueryParameterNameValuePair
              name: street
              value:
                values:
                - $type: ScriptedValue
                fixedValue:
                  $type: StringTestValue
              hasEqualsForEmptyValue: true
            - $type: QueryParameterNameValuePair
              name: city
              value:
                values:
                - $type: ScriptedValue
                fixedValue:
                  $type: StringTestValue
              hasEqualsForEmptyValue: true
            - $type: QueryParameterNameValuePair
              name: state
              value:
                values:
                - $type: ScriptedValue
                fixedValue:
                  $type: StringTestValue
              hasEqualsForEmptyValue: true
            - $type: QueryParameterNameValuePair
              name: zipCode
              value:
                values:
                - $type: ScriptedValue
                fixedValue:
                  $type: StringTestValue
              hasEqualsForEmptyValue: true
            - $type: QueryParameterNameValuePair
              name: phoneNumber
              value:
                values:
                - $type: ScriptedValue
                fixedValue:
                  $type: StringTestValue
              hasEqualsForEmptyValue: true
            - $type: QueryParameterNameValuePair
              name: ssn
              value:
                values:
                - $type: ScriptedValue
                fixedValue:
                  $type: StringTestValue
              hasEqualsForEmptyValue: true
            - $type: QueryParameterNameValuePair
              name: username
              value:
                values:
                - $type: ScriptedValue
                fixedValue:
                  $type: StringTestValue
              hasEqualsForEmptyValue: true
            - $type: QueryParameterNameValuePair
              name: password
              value:
                values:
                - $type: ScriptedValue
                fixedValue:
                  $type: StringTestValue
              hasEqualsForEmptyValue: true
          transportProperties:
            manager:
              protocol: 1
              properties:
              - $type: HTTPClientHTTPProperties
                followRedirects:
                  bool: true
                common:
                  method:
                    values:
                    - $type: ScriptedValue
                    fixedValue:
                      $type: HTTPMethodTestValue
                      method: POST
                  httpHeaders:
                    properties:
                    - name: Accept
                      value:
                        values:
                        - $type: ScriptedValue
                        fixedValue:
                          $type: StringTestValue
                          value: application/json
                protocol: 1
                keepAlive1_1:
                  bool: true
            messageExchangePattern:
              inverted: true
          outputProviders:
            requestHeader:
              $type: HTTPNamedToolOutputProvider
              menuName: Transport Header
              name: Request Transport Header
            responseHeader:
              $type: HTTPNamedToolOutputProvider
              menuName: Transport Header
              name: Response Transport Header
            xmlRequestOutput:
              $type: NamedXMLToolOutputProvider
              menuName: Traffic
              name: Request Traffic
            trafficOutput:
              m_name: Traffic Stream
            objectOutput:
              $type: ObjectOutputProvider
              outputTools:
              - $type: TrafficViewer
                iconName: TrafficViewer
                name: Traffic Viewer
                showRequestHeaders: true
                showResponseHeaders: true
              name: Traffic Object
          literal:
            use: 1
            text:
              MessagingClient_LiteralMessage: ""
              type: application/json
          mode: Literal
          literalQuery:
            isPropertiesRef: true
          constrainedQuery:
            parameters:
            - $type: ElementValue
              writeType: true
              type:
                $type: ElementType
                hash: 1
                localName: firstName
                bodyType:
                  $type: StringType
                  hash: 2
              replacedColumn: ""
              values:
              - $type: StringValue
                replacedColumn: ""
                value: ""
            - $type: ElementValue
              writeType: true
              type:
                $type: ElementType
                hash: 1
                localName: lastName
                bodyType:
                  $type: StringType
                  hash: 2
              replacedColumn: ""
              values:
              - $type: StringValue
                replacedColumn: ""
                value: ""
            - $type: ElementValue
              writeType: true
              type:
                $type: ElementType
                hash: 1
                localName: street
                bodyType:
                  $type: StringType
                  hash: 2
              replacedColumn: ""
              values:
              - $type: StringValue
                replacedColumn: ""
                value: ""
            - $type: ElementValue
              writeType: true
              type:
                $type: ElementType
                hash: 1
                localName: city
                bodyType:
                  $type: StringType
                  hash: 2
              replacedColumn: ""
              values:
              - $type: StringValue
                replacedColumn: ""
                value: ""
            - $type: ElementValue
              writeType: true
              type:
                $type: ElementType
                hash: 1
                localName: state
                bodyType:
                  $type: StringType
                  hash: 2
              replacedColumn: ""
              values:
              - $type: StringValue
                replacedColumn: ""
                value: ""
            - $type: ElementValue
              writeType: true
              type:
                $type: ElementType
                hash: 1
                localName: zipCode
                bodyType:
                  $type: StringType
                  hash: 2
              replacedColumn: ""
              values:
              - $type: StringValue
                replacedColumn: ""
                value: ""
            - $type: ElementValue
              writeType: true
              type:
                $type: ElementType
                hash: 1
                localName: phoneNumber
                bodyType:
                  $type: StringType
                  hash: 2
              replacedColumn: ""
              values:
              - $type: StringValue
                replacedColumn: ""
                value: ""
            - $type: ElementValue
              writeType: true
              type:
                $type: ElementType
                hash: 1
                localName: ssn
                bodyType:
                  $type: StringType
                  hash: 2
              replacedColumn: ""
              values:
              - $type: StringValue
                replacedColumn: ""
                value: ""
            - $type: ElementValue
              writeType: true
              type:
                $type: ElementType
                hash: 1
                localName: username
                bodyType:
                  $type: StringType
                  hash: 2
              replacedColumn: ""
              values:
              - $type: StringValue
                replacedColumn: ""
                value: ""
            - $type: ElementValue
              writeType: true
              type:
                $type: ElementType
                hash: 1
                localName: password
                bodyType:
                  $type: StringType
                  hash: 2
              replacedColumn: ""
              values:
              - $type: StringValue
                replacedColumn: ""
                value: ""
          literalPath:
            pathElements:
            - values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                value: customers
            - values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                value: update
            - values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                value: "{customerId}"
          constrainedPath:
            pathParameters:
            - $type: ElementValue
              writeType: true
              hasReference: true
              qnameAsString: :customerId
              replacedColumn: ""
              values:
              - $type: IntegerValue
                replacedColumn: ""
                value: 0
          resourceMethod:
            resourceId: "/customers/update/{customerId}"
            httpMethod: POST
          resourceMode: 3
          baseUrl:
            values:
            - $type: ScriptedValue
            - $type: WadlTestValue
              value: http://18.237.146.177:8090/parabank/services/bank
            fixedValue:
              $type: StringTestValue
              value: "${BASEURL}"
    - $type: TestSuite
      testLogic: true
      testID: 827
      enabled: true
      name: "/customers/{customerId}"
      profileMappingID: 12
      tests:
      - $type: RESTClientToolTest
        testLogic: true
        testID: 828
        enabled: true
        name: "/customers/{customerId} - GET"
        performanceGroup: 10
        tool:
          $type: RESTClient
          iconName: RESTClient
          name: "/customers/{customerId} - GET"
          formJson:
            value:
              $type: ElementValue
              writeType: true
              hasReference: true
              qnameAsString: :root
              replacedColumn: ""
              values:
              - $type: ComplexValue
                replacedColumn: ""
                attributes:
                - replacedColumn: ""
                  value:
                    $type: StringValue
                    replacedColumn: ""
                    value: object
                  useValue: true
                compositorValue: true
                compositorValueObj:
                  replacedColumn: ""
                  values:
                    $type: CompositorValueSetCollectionSet
                    set:
                    - $type: CompositorValueSet
            elementTypeName: root
          hasServiceInfo: true
          serviceInfo:
            serviceDescriptor:
              $type: StandardServiceDescriptor
              location: http://18.237.146.177:8090/parabank/services/bank/openapi.yaml
            serviceName: ""
            versionName: ""
          jsonBuilder:
            hasValue: true
            value:
              $type: JSONObjectValue
              nameIsNull: true
          xmlBuilder: false
          schemaURL:
            MessagingClient_SchemaLocation: "${SWAGGER}"
          formInput:
            value:
              $type: ElementValue
              writeType: true
              hasReference: true
              qnameAsString: ":"
              replacedColumn: ""
              values:
              - $type: ComplexValue
                replacedColumn: ""
                compositorValue: true
                compositorValueObj:
                  replacedColumn: ""
                  values:
                    $type: CompositorValueSetCollectionSet
                    set:
                    - $type: CompositorValueSet
          jmsMessageOutputProvider:
            $type: JMSMessageOutputProvider
            jmsOutputProviderRequest:
              $type: JMSOutputProvider
              name: Request Object
              menuName: Object
            jmsOutputProviderResponse:
              $type: JMSOutputProvider
              name: Response Message Object
              menuName: Message Object
          validResponseRange:
            validResponseRange:
              values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                validResponseRange: 200
          router:
            values:
            - $type: ScriptedValue
            fixedValue:
              $type: StringTestValue
              HTTPClient_Endpoint: "${BASEURL}/customers/{customerId}"
          transportProperties:
            manager:
              protocol: 1
              properties:
              - $type: HTTPClientHTTPProperties
                followRedirects:
                  bool: true
                common:
                  method:
                    values:
                    - $type: ScriptedValue
                    fixedValue:
                      $type: HTTPMethodTestValue
                      method: GET
                  httpHeaders:
                    properties:
                    - name: Accept
                      value:
                        values:
                        - $type: ScriptedValue
                        fixedValue:
                          $type: StringTestValue
                          value: application/json
                protocol: 1
                keepAlive1_1:
                  bool: true
            messageExchangePattern:
              inverted: true
          outputProviders:
            requestHeader:
              $type: HTTPNamedToolOutputProvider
              menuName: Transport Header
              name: Request Transport Header
            responseHeader:
              $type: HTTPNamedToolOutputProvider
              menuName: Transport Header
              name: Response Transport Header
            xmlRequestOutput:
              $type: NamedXMLToolOutputProvider
              menuName: Traffic
              name: Request Traffic
            trafficOutput:
              m_name: Traffic Stream
            objectOutput:
              $type: ObjectOutputProvider
              outputTools:
              - $type: TrafficViewer
                iconName: TrafficViewer
                name: Traffic Viewer
                showRequestHeaders: true
                showResponseHeaders: true
              name: Traffic Object
          literal:
            use: 1
            text:
              MessagingClient_LiteralMessage: ""
              type: application/json
          mode: Literal
          literalQuery:
            isPropertiesRef: true
          literalPath:
            pathElements:
            - values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                value: customers
            - values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                value: "{customerId}"
          constrainedPath:
            pathParameters:
            - $type: ElementValue
              writeType: true
              hasReference: true
              qnameAsString: :customerId
              replacedColumn: ""
              values:
              - $type: IntegerValue
                replacedColumn: ""
                value: 0
          resourceMethod:
            resourceId: "/customers/{customerId}"
            httpMethod: GET
          resourceMode: 3
          baseUrl:
            values:
            - $type: ScriptedValue
            - $type: WadlTestValue
              value: http://18.237.146.177:8090/parabank/services/bank
            fixedValue:
              $type: StringTestValue
              value: "${BASEURL}"
    - $type: TestSuite
      testLogic: true
      testID: 829
      enabled: true
      name: "/customers/{customerId}/accounts"
      profileMappingID: 13
      tests:
      - $type: RESTClientToolTest
        testLogic: true
        testID: 830
        enabled: true
        name: "/customers/{customerId}/accounts - GET"
        performanceGroup: 11
        tool:
          $type: RESTClient
          iconName: RESTClient
          name: "/customers/{customerId}/accounts - GET"
          formJson:
            value:
              $type: ElementValue
              writeType: true
              hasReference: true
              qnameAsString: :root
              replacedColumn: ""
              values:
              - $type: ComplexValue
                replacedColumn: ""
                attributes:
                - replacedColumn: ""
                  value:
                    $type: StringValue
                    replacedColumn: ""
                    value: object
                  useValue: true
                compositorValue: true
                compositorValueObj:
                  replacedColumn: ""
                  values:
                    $type: CompositorValueSetCollectionSet
                    set:
                    - $type: CompositorValueSet
            elementTypeName: root
          hasServiceInfo: true
          serviceInfo:
            serviceDescriptor:
              $type: StandardServiceDescriptor
              location: http://18.237.146.177:8090/parabank/services/bank/openapi.yaml
            serviceName: ""
            versionName: ""
          jsonBuilder:
            hasValue: true
            value:
              $type: JSONObjectValue
              nameIsNull: true
          xmlBuilder: false
          schemaURL:
            MessagingClient_SchemaLocation: "${SWAGGER}"
          formInput:
            value:
              $type: ElementValue
              writeType: true
              hasReference: true
              qnameAsString: ":"
              replacedColumn: ""
              values:
              - $type: ComplexValue
                replacedColumn: ""
                compositorValue: true
                compositorValueObj:
                  replacedColumn: ""
                  values:
                    $type: CompositorValueSetCollectionSet
                    set:
                    - $type: CompositorValueSet
          jmsMessageOutputProvider:
            $type: JMSMessageOutputProvider
            jmsOutputProviderRequest:
              $type: JMSOutputProvider
              name: Request Object
              menuName: Object
            jmsOutputProviderResponse:
              $type: JMSOutputProvider
              name: Response Message Object
              menuName: Message Object
          validResponseRange:
            validResponseRange:
              values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                validResponseRange: 200
          router:
            values:
            - $type: ScriptedValue
            fixedValue:
              $type: StringTestValue
              HTTPClient_Endpoint: "${BASEURL}/customers/{customerId}/accounts"
          transportProperties:
            manager:
              protocol: 1
              properties:
              - $type: HTTPClientHTTPProperties
                followRedirects:
                  bool: true
                common:
                  method:
                    values:
                    - $type: ScriptedValue
                    fixedValue:
                      $type: HTTPMethodTestValue
                      method: GET
                  httpHeaders:
                    properties:
                    - name: Accept
                      value:
                        values:
                        - $type: ScriptedValue
                        fixedValue:
                          $type: StringTestValue
                          value: application/json
                protocol: 1
                keepAlive1_1:
                  bool: true
            messageExchangePattern:
              inverted: true
          outputProviders:
            requestHeader:
              $type: HTTPNamedToolOutputProvider
              menuName: Transport Header
              name: Request Transport Header
            responseHeader:
              $type: HTTPNamedToolOutputProvider
              menuName: Transport Header
              name: Response Transport Header
            xmlRequestOutput:
              $type: NamedXMLToolOutputProvider
              menuName: Traffic
              name: Request Traffic
            trafficOutput:
              m_name: Traffic Stream
            objectOutput:
              $type: ObjectOutputProvider
              outputTools:
              - $type: TrafficViewer
                iconName: TrafficViewer
                name: Traffic Viewer
                showRequestHeaders: true
                showResponseHeaders: true
              name: Traffic Object
          literal:
            use: 1
            text:
              MessagingClient_LiteralMessage: ""
              type: application/json
          mode: Literal
          literalQuery:
            isPropertiesRef: true
          literalPath:
            pathElements:
            - values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                value: customers
            - values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                value: "{customerId}"
            - values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                value: accounts
          constrainedPath:
            pathParameters:
            - $type: ElementValue
              writeType: true
              hasReference: true
              qnameAsString: :customerId
              replacedColumn: ""
              values:
              - $type: IntegerValue
                replacedColumn: ""
                value: 0
          resourceMethod:
            resourceId: "/customers/{customerId}/accounts"
            httpMethod: GET
          resourceMode: 3
          baseUrl:
            values:
            - $type: ScriptedValue
            - $type: WadlTestValue
              value: http://18.237.146.177:8090/parabank/services/bank
            fixedValue:
              $type: StringTestValue
              value: "${BASEURL}"
    - $type: TestSuite
      testLogic: true
      testID: 831
      enabled: true
      name: "/customers/{customerId}/buyPosition"
      profileMappingID: 14
      tests:
      - $type: RESTClientToolTest
        testLogic: true
        testID: 832
        enabled: true
        name: "/customers/{customerId}/buyPosition - POST"
        performanceGroup: 12
        tool:
          $type: RESTClient
          iconName: RESTClient
          name: "/customers/{customerId}/buyPosition - POST"
          formJson:
            value:
              $type: ElementValue
              writeType: true
              hasReference: true
              qnameAsString: :root
              replacedColumn: ""
              values:
              - $type: ComplexValue
                replacedColumn: ""
                attributes:
                - replacedColumn: ""
                  value:
                    $type: StringValue
                    replacedColumn: ""
                    value: object
                  useValue: true
                compositorValue: true
                compositorValueObj:
                  replacedColumn: ""
                  values:
                    $type: CompositorValueSetCollectionSet
                    set:
                    - $type: CompositorValueSet
            elementTypeName: root
          hasServiceInfo: true
          serviceInfo:
            serviceDescriptor:
              $type: StandardServiceDescriptor
              location: http://18.237.146.177:8090/parabank/services/bank/openapi.yaml
            serviceName: ""
            versionName: ""
          jsonBuilder:
            hasValue: true
            value:
              $type: JSONObjectValue
              nameIsNull: true
          xmlBuilder: false
          schemaURL:
            MessagingClient_SchemaLocation: "${SWAGGER}"
          formInput:
            value:
              $type: ElementValue
              writeType: true
              hasReference: true
              qnameAsString: ":"
              replacedColumn: ""
              values:
              - $type: ComplexValue
                replacedColumn: ""
                compositorValue: true
                compositorValueObj:
                  replacedColumn: ""
                  values:
                    $type: CompositorValueSetCollectionSet
                    set:
                    - $type: CompositorValueSet
          jmsMessageOutputProvider:
            $type: JMSMessageOutputProvider
            jmsOutputProviderRequest:
              $type: JMSOutputProvider
              name: Request Object
              menuName: Object
            jmsOutputProviderResponse:
              $type: JMSOutputProvider
              name: Response Message Object
              menuName: Message Object
          validResponseRange:
            validResponseRange:
              values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                validResponseRange: 200
          router:
            values:
            - $type: ScriptedValue
            fixedValue:
              $type: StringTestValue
              HTTPClient_Endpoint: "${BASEURL}/customers/{customerId}/buyPosition?accountId=0&name=&symbol=&shares=0&pricePerShare=0.0"
          urlParameters:
            properties:
            - name: accountId
              value:
                values:
                - $type: ScriptedValue
                fixedValue:
                  $type: StringTestValue
                  value: 0
            - $type: QueryParameterNameValuePair
              name: name
              value:
                values:
                - $type: ScriptedValue
                fixedValue:
                  $type: StringTestValue
              hasEqualsForEmptyValue: true
            - $type: QueryParameterNameValuePair
              name: symbol
              value:
                values:
                - $type: ScriptedValue
                fixedValue:
                  $type: StringTestValue
              hasEqualsForEmptyValue: true
            - name: shares
              value:
                values:
                - $type: ScriptedValue
                fixedValue:
                  $type: StringTestValue
                  value: 0
            - name: pricePerShare
              value:
                values:
                - $type: ScriptedValue
                fixedValue:
                  $type: StringTestValue
                  value: 0.0
          transportProperties:
            manager:
              protocol: 1
              properties:
              - $type: HTTPClientHTTPProperties
                followRedirects:
                  bool: true
                common:
                  method:
                    values:
                    - $type: ScriptedValue
                    fixedValue:
                      $type: HTTPMethodTestValue
                      method: POST
                  httpHeaders:
                    properties:
                    - name: Accept
                      value:
                        values:
                        - $type: ScriptedValue
                        fixedValue:
                          $type: StringTestValue
                          value: application/json
                protocol: 1
                keepAlive1_1:
                  bool: true
            messageExchangePattern:
              inverted: true
          outputProviders:
            requestHeader:
              $type: HTTPNamedToolOutputProvider
              menuName: Transport Header
              name: Request Transport Header
            responseHeader:
              $type: HTTPNamedToolOutputProvider
              menuName: Transport Header
              name: Response Transport Header
            xmlRequestOutput:
              $type: NamedXMLToolOutputProvider
              menuName: Traffic
              name: Request Traffic
            trafficOutput:
              m_name: Traffic Stream
            objectOutput:
              $type: ObjectOutputProvider
              outputTools:
              - $type: TrafficViewer
                iconName: TrafficViewer
                name: Traffic Viewer
                showRequestHeaders: true
                showResponseHeaders: true
              name: Traffic Object
          literal:
            use: 1
            text:
              MessagingClient_LiteralMessage: ""
              type: application/json
          mode: Literal
          literalQuery:
            isPropertiesRef: true
          constrainedQuery:
            parameters:
            - $type: ElementValue
              writeType: true
              hasReference: true
              qnameAsString: :accountId
              replacedColumn: ""
              values:
              - $type: IntegerValue
                replacedColumn: ""
                value: 0
            - $type: ElementValue
              writeType: true
              type:
                $type: ElementType
                hash: 1
                localName: name
                bodyType:
                  $type: StringType
                  hash: 2
              replacedColumn: ""
              values:
              - $type: StringValue
                replacedColumn: ""
                value: ""
            - $type: ElementValue
              writeType: true
              type:
                $type: ElementType
                hash: 1
                localName: symbol
                bodyType:
                  $type: StringType
                  hash: 2
              replacedColumn: ""
              values:
              - $type: StringValue
                replacedColumn: ""
                value: ""
            - $type: ElementValue
              writeType: true
              type:
                $type: ElementType
                hash: 1
                defaultValue: 0
                localName: shares
                bodyType:
                  $type: IntegerType
                  hash: 2
              replacedColumn: ""
              values:
              - $type: IntegerValue
                replacedColumn: ""
                value: 0
            - $type: ElementValue
              writeType: true
              type:
                $type: ElementType
                hash: 1
                defaultValue: 0.0
                localName: pricePerShare
                bodyType:
                  $type: DecimalType
                  hash: 2
              replacedColumn: ""
              values:
              - $type: DecimalValue
                replacedColumn: ""
                value: 0.0
          literalPath:
            pathElements:
            - values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                value: customers
            - values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                value: "{customerId}"
            - values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                value: buyPosition
          constrainedPath:
            pathParameters:
            - $type: ElementValue
              writeType: true
              hasReference: true
              qnameAsString: :customerId
              replacedColumn: ""
              values:
              - $type: IntegerValue
                replacedColumn: ""
                value: 0
          resourceMethod:
            resourceId: "/customers/{customerId}/buyPosition"
            httpMethod: POST
          resourceMode: 3
          baseUrl:
            values:
            - $type: ScriptedValue
            - $type: WadlTestValue
              value: http://18.237.146.177:8090/parabank/services/bank
            fixedValue:
              $type: StringTestValue
              value: "${BASEURL}"
    - $type: TestSuite
      testLogic: true
      testID: 833
      enabled: true
      name: "/customers/{customerId}/positions"
      profileMappingID: 15
      tests:
      - $type: RESTClientToolTest
        testLogic: true
        testID: 834
        enabled: true
        name: "/customers/{customerId}/positions - GET"
        performanceGroup: 13
        tool:
          $type: RESTClient
          iconName: RESTClient
          name: "/customers/{customerId}/positions - GET"
          formJson:
            value:
              $type: ElementValue
              writeType: true
              hasReference: true
              qnameAsString: :root
              replacedColumn: ""
              values:
              - $type: ComplexValue
                replacedColumn: ""
                attributes:
                - replacedColumn: ""
                  value:
                    $type: StringValue
                    replacedColumn: ""
                    value: object
                  useValue: true
                compositorValue: true
                compositorValueObj:
                  replacedColumn: ""
                  values:
                    $type: CompositorValueSetCollectionSet
                    set:
                    - $type: CompositorValueSet
            elementTypeName: root
          hasServiceInfo: true
          serviceInfo:
            serviceDescriptor:
              $type: StandardServiceDescriptor
              location: http://18.237.146.177:8090/parabank/services/bank/openapi.yaml
            serviceName: ""
            versionName: ""
          jsonBuilder:
            hasValue: true
            value:
              $type: JSONObjectValue
              nameIsNull: true
          xmlBuilder: false
          schemaURL:
            MessagingClient_SchemaLocation: "${SWAGGER}"
          formInput:
            value:
              $type: ElementValue
              writeType: true
              hasReference: true
              qnameAsString: ":"
              replacedColumn: ""
              values:
              - $type: ComplexValue
                replacedColumn: ""
                compositorValue: true
                compositorValueObj:
                  replacedColumn: ""
                  values:
                    $type: CompositorValueSetCollectionSet
                    set:
                    - $type: CompositorValueSet
          jmsMessageOutputProvider:
            $type: JMSMessageOutputProvider
            jmsOutputProviderRequest:
              $type: JMSOutputProvider
              name: Request Object
              menuName: Object
            jmsOutputProviderResponse:
              $type: JMSOutputProvider
              name: Response Message Object
              menuName: Message Object
          validResponseRange:
            validResponseRange:
              values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                validResponseRange: 200
          router:
            values:
            - $type: ScriptedValue
            fixedValue:
              $type: StringTestValue
              HTTPClient_Endpoint: "${BASEURL}/customers/{customerId}/positions"
          transportProperties:
            manager:
              protocol: 1
              properties:
              - $type: HTTPClientHTTPProperties
                followRedirects:
                  bool: true
                common:
                  method:
                    values:
                    - $type: ScriptedValue
                    fixedValue:
                      $type: HTTPMethodTestValue
                      method: GET
                  httpHeaders:
                    properties:
                    - name: Accept
                      value:
                        values:
                        - $type: ScriptedValue
                        fixedValue:
                          $type: StringTestValue
                          value: application/json
                protocol: 1
                keepAlive1_1:
                  bool: true
            messageExchangePattern:
              inverted: true
          outputProviders:
            requestHeader:
              $type: HTTPNamedToolOutputProvider
              menuName: Transport Header
              name: Request Transport Header
            responseHeader:
              $type: HTTPNamedToolOutputProvider
              menuName: Transport Header
              name: Response Transport Header
            xmlRequestOutput:
              $type: NamedXMLToolOutputProvider
              menuName: Traffic
              name: Request Traffic
            trafficOutput:
              m_name: Traffic Stream
            objectOutput:
              $type: ObjectOutputProvider
              outputTools:
              - $type: TrafficViewer
                iconName: TrafficViewer
                name: Traffic Viewer
                showRequestHeaders: true
                showResponseHeaders: true
              name: Traffic Object
          literal:
            use: 1
            text:
              MessagingClient_LiteralMessage: ""
              type: application/json
          mode: Literal
          literalQuery:
            isPropertiesRef: true
          literalPath:
            pathElements:
            - values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                value: customers
            - values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                value: "{customerId}"
            - values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                value: positions
          constrainedPath:
            pathParameters:
            - $type: ElementValue
              writeType: true
              hasReference: true
              qnameAsString: :customerId
              replacedColumn: ""
              values:
              - $type: IntegerValue
                replacedColumn: ""
                value: 0
          resourceMethod:
            resourceId: "/customers/{customerId}/positions"
            httpMethod: GET
          resourceMode: 3
          baseUrl:
            values:
            - $type: ScriptedValue
            - $type: WadlTestValue
              value: http://18.237.146.177:8090/parabank/services/bank
            fixedValue:
              $type: StringTestValue
              value: "${BASEURL}"
    - $type: TestSuite
      testLogic: true
      testID: 835
      enabled: true
      name: "/customers/{customerId}/sellPosition"
      profileMappingID: 16
      tests:
      - $type: RESTClientToolTest
        testLogic: true
        testID: 836
        enabled: true
        name: "/customers/{customerId}/sellPosition - POST"
        performanceGroup: 14
        tool:
          $type: RESTClient
          iconName: RESTClient
          name: "/customers/{customerId}/sellPosition - POST"
          formJson:
            value:
              $type: ElementValue
              writeType: true
              hasReference: true
              qnameAsString: :root
              replacedColumn: ""
              values:
              - $type: ComplexValue
                replacedColumn: ""
                attributes:
                - replacedColumn: ""
                  value:
                    $type: StringValue
                    replacedColumn: ""
                    value: object
                  useValue: true
                compositorValue: true
                compositorValueObj:
                  replacedColumn: ""
                  values:
                    $type: CompositorValueSetCollectionSet
                    set:
                    - $type: CompositorValueSet
            elementTypeName: root
          hasServiceInfo: true
          serviceInfo:
            serviceDescriptor:
              $type: StandardServiceDescriptor
              location: http://18.237.146.177:8090/parabank/services/bank/openapi.yaml
            serviceName: ""
            versionName: ""
          jsonBuilder:
            hasValue: true
            value:
              $type: JSONObjectValue
              nameIsNull: true
          xmlBuilder: false
          schemaURL:
            MessagingClient_SchemaLocation: "${SWAGGER}"
          formInput:
            value:
              $type: ElementValue
              writeType: true
              hasReference: true
              qnameAsString: ":"
              replacedColumn: ""
              values:
              - $type: ComplexValue
                replacedColumn: ""
                compositorValue: true
                compositorValueObj:
                  replacedColumn: ""
                  values:
                    $type: CompositorValueSetCollectionSet
                    set:
                    - $type: CompositorValueSet
          jmsMessageOutputProvider:
            $type: JMSMessageOutputProvider
            jmsOutputProviderRequest:
              $type: JMSOutputProvider
              name: Request Object
              menuName: Object
            jmsOutputProviderResponse:
              $type: JMSOutputProvider
              name: Response Message Object
              menuName: Message Object
          validResponseRange:
            validResponseRange:
              values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                validResponseRange: 200
          router:
            values:
            - $type: ScriptedValue
            fixedValue:
              $type: StringTestValue
              HTTPClient_Endpoint: "${BASEURL}/customers/{customerId}/sellPosition?accountId=0&positionId=0&shares=0&pricePerShare=0.0"
          urlParameters:
            properties:
            - name: accountId
              value:
                values:
                - $type: ScriptedValue
                fixedValue:
                  $type: StringTestValue
                  value: 0
            - name: positionId
              value:
                values:
                - $type: ScriptedValue
                fixedValue:
                  $type: StringTestValue
                  value: 0
            - name: shares
              value:
                values:
                - $type: ScriptedValue
                fixedValue:
                  $type: StringTestValue
                  value: 0
            - name: pricePerShare
              value:
                values:
                - $type: ScriptedValue
                fixedValue:
                  $type: StringTestValue
                  value: 0.0
          transportProperties:
            manager:
              protocol: 1
              properties:
              - $type: HTTPClientHTTPProperties
                followRedirects:
                  bool: true
                common:
                  method:
                    values:
                    - $type: ScriptedValue
                    fixedValue:
                      $type: HTTPMethodTestValue
                      method: POST
                  httpHeaders:
                    properties:
                    - name: Accept
                      value:
                        values:
                        - $type: ScriptedValue
                        fixedValue:
                          $type: StringTestValue
                          value: application/json
                protocol: 1
                keepAlive1_1:
                  bool: true
            messageExchangePattern:
              inverted: true
          outputProviders:
            requestHeader:
              $type: HTTPNamedToolOutputProvider
              menuName: Transport Header
              name: Request Transport Header
            responseHeader:
              $type: HTTPNamedToolOutputProvider
              menuName: Transport Header
              name: Response Transport Header
            xmlRequestOutput:
              $type: NamedXMLToolOutputProvider
              menuName: Traffic
              name: Request Traffic
            trafficOutput:
              m_name: Traffic Stream
            objectOutput:
              $type: ObjectOutputProvider
              outputTools:
              - $type: TrafficViewer
                iconName: TrafficViewer
                name: Traffic Viewer
                showRequestHeaders: true
                showResponseHeaders: true
              name: Traffic Object
          literal:
            use: 1
            text:
              MessagingClient_LiteralMessage: ""
              type: application/json
          mode: Literal
          literalQuery:
            isPropertiesRef: true
          constrainedQuery:
            parameters:
            - $type: ElementValue
              writeType: true
              hasReference: true
              qnameAsString: :accountId
              replacedColumn: ""
              values:
              - $type: IntegerValue
                replacedColumn: ""
                value: 0
            - $type: ElementValue
              writeType: true
              type:
                $type: ElementType
                hash: 1
                defaultValue: 0
                localName: positionId
                bodyType:
                  $type: IntegerType
                  hash: 2
              replacedColumn: ""
              values:
              - $type: IntegerValue
                replacedColumn: ""
                value: 0
            - $type: ElementValue
              writeType: true
              hasReference: true
              qnameAsString: :shares
              replacedColumn: ""
              values:
              - $type: IntegerValue
                replacedColumn: ""
                value: 0
            - $type: ElementValue
              writeType: true
              hasReference: true
              qnameAsString: :pricePerShare
              replacedColumn: ""
              values:
              - $type: DecimalValue
                replacedColumn: ""
                value: 0.0
          literalPath:
            pathElements:
            - values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                value: customers
            - values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                value: "{customerId}"
            - values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                value: sellPosition
          constrainedPath:
            pathParameters:
            - $type: ElementValue
              writeType: true
              hasReference: true
              qnameAsString: :customerId
              replacedColumn: ""
              values:
              - $type: IntegerValue
                replacedColumn: ""
                value: 0
          resourceMethod:
            resourceId: "/customers/{customerId}/sellPosition"
            httpMethod: POST
          resourceMode: 3
          baseUrl:
            values:
            - $type: ScriptedValue
            - $type: WadlTestValue
              value: http://18.237.146.177:8090/parabank/services/bank
            fixedValue:
              $type: StringTestValue
              value: "${BASEURL}"
    - $type: TestSuite
      testLogic: true
      testID: 837
      enabled: true
      name: /deposit
      profileMappingID: 17
      tests:
      - $type: RESTClientToolTest
        testLogic: true
        testID: 838
        enabled: true
        name: /deposit - POST
        performanceGroup: 15
        tool:
          $type: RESTClient
          iconName: RESTClient
          name: /deposit - POST
          formJson:
            value:
              $type: ElementValue
              writeType: true
              hasReference: true
              qnameAsString: :root
              replacedColumn: ""
              values:
              - $type: ComplexValue
                replacedColumn: ""
                attributes:
                - replacedColumn: ""
                  value:
                    $type: StringValue
                    replacedColumn: ""
                    value: object
                  useValue: true
                compositorValue: true
                compositorValueObj:
                  replacedColumn: ""
                  values:
                    $type: CompositorValueSetCollectionSet
                    set:
                    - $type: CompositorValueSet
            elementTypeName: root
          hasServiceInfo: true
          serviceInfo:
            serviceDescriptor:
              $type: StandardServiceDescriptor
              location: http://18.237.146.177:8090/parabank/services/bank/openapi.yaml
            serviceName: ""
            versionName: ""
          jsonBuilder:
            hasValue: true
            value:
              $type: JSONObjectValue
              nameIsNull: true
          xmlBuilder: false
          schemaURL:
            MessagingClient_SchemaLocation: "${SWAGGER}"
          formInput:
            value:
              $type: ElementValue
              writeType: true
              hasReference: true
              qnameAsString: ":"
              replacedColumn: ""
              values:
              - $type: ComplexValue
                replacedColumn: ""
                compositorValue: true
                compositorValueObj:
                  replacedColumn: ""
                  values:
                    $type: CompositorValueSetCollectionSet
                    set:
                    - $type: CompositorValueSet
          jmsMessageOutputProvider:
            $type: JMSMessageOutputProvider
            jmsOutputProviderRequest:
              $type: JMSOutputProvider
              name: Request Object
              menuName: Object
            jmsOutputProviderResponse:
              $type: JMSOutputProvider
              name: Response Message Object
              menuName: Message Object
          validResponseRange:
            validResponseRange:
              values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                validResponseRange: 200
          router:
            values:
            - $type: ScriptedValue
            fixedValue:
              $type: StringTestValue
              HTTPClient_Endpoint: "${BASEURL}/deposit?accountId=0&amount=0.0"
          urlParameters:
            properties:
            - name: accountId
              value:
                values:
                - $type: ScriptedValue
                fixedValue:
                  $type: StringTestValue
                  value: 0
            - name: amount
              value:
                values:
                - $type: ScriptedValue
                fixedValue:
                  $type: StringTestValue
                  value: 0.0
          transportProperties:
            manager:
              protocol: 1
              properties:
              - $type: HTTPClientHTTPProperties
                followRedirects:
                  bool: true
                common:
                  method:
                    values:
                    - $type: ScriptedValue
                    fixedValue:
                      $type: HTTPMethodTestValue
                      method: POST
                  httpHeaders:
                    properties:
                    - name: Accept
                      value:
                        values:
                        - $type: ScriptedValue
                        fixedValue:
                          $type: StringTestValue
                          value: application/json
                protocol: 1
                keepAlive1_1:
                  bool: true
            messageExchangePattern:
              inverted: true
          outputProviders:
            requestHeader:
              $type: HTTPNamedToolOutputProvider
              menuName: Transport Header
              name: Request Transport Header
            responseHeader:
              $type: HTTPNamedToolOutputProvider
              menuName: Transport Header
              name: Response Transport Header
            xmlRequestOutput:
              $type: NamedXMLToolOutputProvider
              menuName: Traffic
              name: Request Traffic
            trafficOutput:
              m_name: Traffic Stream
            objectOutput:
              $type: ObjectOutputProvider
              outputTools:
              - $type: TrafficViewer
                iconName: TrafficViewer
                name: Traffic Viewer
                showRequestHeaders: true
                showResponseHeaders: true
              name: Traffic Object
          literal:
            use: 1
            text:
              MessagingClient_LiteralMessage: ""
              type: application/json
          mode: Literal
          literalQuery:
            isPropertiesRef: true
          constrainedQuery:
            parameters:
            - $type: ElementValue
              writeType: true
              hasReference: true
              qnameAsString: :accountId
              replacedColumn: ""
              values:
              - $type: IntegerValue
                replacedColumn: ""
                value: 0
            - $type: ElementValue
              writeType: true
              hasReference: true
              qnameAsString: :amount
              replacedColumn: ""
              values:
              - $type: DecimalValue
                replacedColumn: ""
                value: 0.0
          literalPath:
            pathElements:
            - values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                value: deposit
          resourceMethod:
            resourceId: /deposit
            httpMethod: POST
          resourceMode: 3
          baseUrl:
            values:
            - $type: ScriptedValue
            - $type: WadlTestValue
              value: http://18.237.146.177:8090/parabank/services/bank
            fixedValue:
              $type: StringTestValue
              value: "${BASEURL}"
    - $type: TestSuite
      testLogic: true
      testID: 839
      enabled: true
      name: /initializeDB
      profileMappingID: 18
      tests:
      - $type: RESTClientToolTest
        testLogic: true
        testID: 840
        enabled: true
        name: /initializeDB - POST
        performanceGroup: 16
        tool:
          $type: RESTClient
          iconName: RESTClient
          name: /initializeDB - POST
          formJson:
            value:
              $type: ElementValue
              writeType: true
              hasReference: true
              qnameAsString: :root
              replacedColumn: ""
              values:
              - $type: ComplexValue
                replacedColumn: ""
                attributes:
                - replacedColumn: ""
                  value:
                    $type: StringValue
                    replacedColumn: ""
                    value: object
                  useValue: true
                compositorValue: true
                compositorValueObj:
                  replacedColumn: ""
                  values:
                    $type: CompositorValueSetCollectionSet
                    set:
                    - $type: CompositorValueSet
            elementTypeName: root
          hasServiceInfo: true
          serviceInfo:
            serviceDescriptor:
              $type: StandardServiceDescriptor
              location: http://18.237.146.177:8090/parabank/services/bank/openapi.yaml
            serviceName: ""
            versionName: ""
          jsonBuilder:
            hasValue: true
            value:
              $type: JSONObjectValue
              nameIsNull: true
          xmlBuilder: false
          schemaURL:
            MessagingClient_SchemaLocation: "${SWAGGER}"
          formInput:
            value:
              $type: ElementValue
              writeType: true
              hasReference: true
              qnameAsString: ":"
              replacedColumn: ""
              values:
              - $type: ComplexValue
                replacedColumn: ""
                compositorValue: true
                compositorValueObj:
                  replacedColumn: ""
                  values:
                    $type: CompositorValueSetCollectionSet
                    set:
                    - $type: CompositorValueSet
          jmsMessageOutputProvider:
            $type: JMSMessageOutputProvider
            jmsOutputProviderRequest:
              $type: JMSOutputProvider
              name: Request Object
              menuName: Object
            jmsOutputProviderResponse:
              $type: JMSOutputProvider
              name: Response Message Object
              menuName: Message Object
          validResponseRange:
            validResponseRange:
              values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                validResponseRange: 200
          router:
            values:
            - $type: ScriptedValue
            fixedValue:
              $type: StringTestValue
              HTTPClient_Endpoint: "${BASEURL}/initializeDB"
          transportProperties:
            manager:
              protocol: 1
              properties:
              - $type: HTTPClientHTTPProperties
                followRedirects:
                  bool: true
                common:
                  method:
                    values:
                    - $type: ScriptedValue
                    fixedValue:
                      $type: HTTPMethodTestValue
                      method: POST
                  httpHeaders:
                    properties:
                    - name: Accept
                      value:
                        values:
                        - $type: ScriptedValue
                        fixedValue:
                          $type: StringTestValue
                          value: application/json
                protocol: 1
                keepAlive1_1:
                  bool: true
            messageExchangePattern:
              inverted: true
          outputProviders:
            requestHeader:
              $type: HTTPNamedToolOutputProvider
              menuName: Transport Header
              name: Request Transport Header
            responseHeader:
              $type: HTTPNamedToolOutputProvider
              menuName: Transport Header
              name: Response Transport Header
            xmlRequestOutput:
              $type: NamedXMLToolOutputProvider
              menuName: Traffic
              name: Request Traffic
            trafficOutput:
              m_name: Traffic Stream
            objectOutput:
              $type: ObjectOutputProvider
              outputTools:
              - $type: TrafficViewer
                iconName: TrafficViewer
                name: Traffic Viewer
                showRequestHeaders: true
                showResponseHeaders: true
              name: Traffic Object
          literal:
            use: 1
            text:
              MessagingClient_LiteralMessage: ""
              type: application/json
          mode: Literal
          literalQuery:
            isPropertiesRef: true
          literalPath:
            pathElements:
            - values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                value: initializeDB
          resourceMethod:
            resourceId: /initializeDB
            httpMethod: POST
          resourceMode: 3
          baseUrl:
            values:
            - $type: ScriptedValue
            - $type: WadlTestValue
              value: http://18.237.146.177:8090/parabank/services/bank
            fixedValue:
              $type: StringTestValue
              value: "${BASEURL}"
    - $type: TestSuite
      testLogic: true
      testID: 841
      enabled: true
      name: "/login/{username}/{password}"
      profileMappingID: 19
      tests:
      - $type: RESTClientToolTest
        testLogic: true
        testID: 842
        enabled: true
        name: "/login/{username}/{password} - GET"
        performanceGroup: 17
        tool:
          $type: RESTClient
          iconName: RESTClient
          name: "/login/{username}/{password} - GET"
          formJson:
            value:
              $type: ElementValue
              writeType: true
              hasReference: true
              qnameAsString: :root
              replacedColumn: ""
              values:
              - $type: ComplexValue
                replacedColumn: ""
                attributes:
                - replacedColumn: ""
                  value:
                    $type: StringValue
                    replacedColumn: ""
                    value: object
                  useValue: true
                compositorValue: true
                compositorValueObj:
                  replacedColumn: ""
                  values:
                    $type: CompositorValueSetCollectionSet
                    set:
                    - $type: CompositorValueSet
            elementTypeName: root
          hasServiceInfo: true
          serviceInfo:
            serviceDescriptor:
              $type: StandardServiceDescriptor
              location: http://18.237.146.177:8090/parabank/services/bank/openapi.yaml
            serviceName: ""
            versionName: ""
          jsonBuilder:
            hasValue: true
            value:
              $type: JSONObjectValue
              nameIsNull: true
          xmlBuilder: false
          schemaURL:
            MessagingClient_SchemaLocation: "${SWAGGER}"
          formInput:
            value:
              $type: ElementValue
              writeType: true
              hasReference: true
              qnameAsString: ":"
              replacedColumn: ""
              values:
              - $type: ComplexValue
                replacedColumn: ""
                compositorValue: true
                compositorValueObj:
                  replacedColumn: ""
                  values:
                    $type: CompositorValueSetCollectionSet
                    set:
                    - $type: CompositorValueSet
          jmsMessageOutputProvider:
            $type: JMSMessageOutputProvider
            jmsOutputProviderRequest:
              $type: JMSOutputProvider
              name: Request Object
              menuName: Object
            jmsOutputProviderResponse:
              $type: JMSOutputProvider
              name: Response Message Object
              menuName: Message Object
          validResponseRange:
            validResponseRange:
              values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                validResponseRange: 200
          router:
            values:
            - $type: ScriptedValue
            fixedValue:
              $type: StringTestValue
              HTTPClient_Endpoint: "${BASEURL}/login/{username}/{password}"
          transportProperties:
            manager:
              protocol: 1
              properties:
              - $type: HTTPClientHTTPProperties
                followRedirects:
                  bool: true
                common:
                  method:
                    values:
                    - $type: ScriptedValue
                    fixedValue:
                      $type: HTTPMethodTestValue
                      method: GET
                  httpHeaders:
                    properties:
                    - name: Accept
                      value:
                        values:
                        - $type: ScriptedValue
                        fixedValue:
                          $type: StringTestValue
                          value: application/json
                protocol: 1
                keepAlive1_1:
                  bool: true
            messageExchangePattern:
              inverted: true
          outputProviders:
            requestHeader:
              $type: HTTPNamedToolOutputProvider
              menuName: Transport Header
              name: Request Transport Header
            responseHeader:
              $type: HTTPNamedToolOutputProvider
              menuName: Transport Header
              name: Response Transport Header
            xmlRequestOutput:
              $type: NamedXMLToolOutputProvider
              menuName: Traffic
              name: Request Traffic
            trafficOutput:
              m_name: Traffic Stream
            objectOutput:
              $type: ObjectOutputProvider
              outputTools:
              - $type: TrafficViewer
                iconName: TrafficViewer
                name: Traffic Viewer
                showRequestHeaders: true
                showResponseHeaders: true
              name: Traffic Object
          literal:
            use: 1
            text:
              MessagingClient_LiteralMessage: ""
              type: application/json
          mode: Literal
          literalQuery:
            isPropertiesRef: true
          literalPath:
            pathElements:
            - values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                value: login
            - values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                value: "{username}"
            - values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                value: "{password}"
          constrainedPath:
            pathParameters:
            - $type: ElementValue
              writeType: true
              hasReference: true
              qnameAsString: :username
              replacedColumn: ""
              values:
              - $type: StringValue
                replacedColumn: ""
                value: ""
            - $type: ElementValue
              writeType: true
              hasReference: true
              qnameAsString: :password
              replacedColumn: ""
              values:
              - $type: StringValue
                replacedColumn: ""
                value: ""
          resourceMethod:
            resourceId: "/login/{username}/{password}"
            httpMethod: GET
          resourceMode: 3
          baseUrl:
            values:
            - $type: ScriptedValue
            - $type: WadlTestValue
              value: http://18.237.146.177:8090/parabank/services/bank
            fixedValue:
              $type: StringTestValue
              value: "${BASEURL}"
    - $type: TestSuite
      testLogic: true
      testID: 843
      enabled: true
      name: "/positions/{positionId}"
      profileMappingID: 20
      tests:
      - $type: RESTClientToolTest
        testLogic: true
        testID: 844
        enabled: true
        name: "/positions/{positionId} - GET"
        performanceGroup: 18
        tool:
          $type: RESTClient
          iconName: RESTClient
          name: "/positions/{positionId} - GET"
          formJson:
            value:
              $type: ElementValue
              writeType: true
              hasReference: true
              qnameAsString: :root
              replacedColumn: ""
              values:
              - $type: ComplexValue
                replacedColumn: ""
                attributes:
                - replacedColumn: ""
                  value:
                    $type: StringValue
                    replacedColumn: ""
                    value: object
                  useValue: true
                compositorValue: true
                compositorValueObj:
                  replacedColumn: ""
                  values:
                    $type: CompositorValueSetCollectionSet
                    set:
                    - $type: CompositorValueSet
            elementTypeName: root
          hasServiceInfo: true
          serviceInfo:
            serviceDescriptor:
              $type: StandardServiceDescriptor
              location: http://18.237.146.177:8090/parabank/services/bank/openapi.yaml
            serviceName: ""
            versionName: ""
          jsonBuilder:
            hasValue: true
            value:
              $type: JSONObjectValue
              nameIsNull: true
          xmlBuilder: false
          schemaURL:
            MessagingClient_SchemaLocation: "${SWAGGER}"
          formInput:
            value:
              $type: ElementValue
              writeType: true
              hasReference: true
              qnameAsString: ":"
              replacedColumn: ""
              values:
              - $type: ComplexValue
                replacedColumn: ""
                compositorValue: true
                compositorValueObj:
                  replacedColumn: ""
                  values:
                    $type: CompositorValueSetCollectionSet
                    set:
                    - $type: CompositorValueSet
          jmsMessageOutputProvider:
            $type: JMSMessageOutputProvider
            jmsOutputProviderRequest:
              $type: JMSOutputProvider
              name: Request Object
              menuName: Object
            jmsOutputProviderResponse:
              $type: JMSOutputProvider
              name: Response Message Object
              menuName: Message Object
          validResponseRange:
            validResponseRange:
              values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                validResponseRange: 200
          router:
            values:
            - $type: ScriptedValue
            fixedValue:
              $type: StringTestValue
              HTTPClient_Endpoint: "${BASEURL}/positions/{positionId}"
          transportProperties:
            manager:
              protocol: 1
              properties:
              - $type: HTTPClientHTTPProperties
                followRedirects:
                  bool: true
                common:
                  method:
                    values:
                    - $type: ScriptedValue
                    fixedValue:
                      $type: HTTPMethodTestValue
                      method: GET
                  httpHeaders:
                    properties:
                    - name: Accept
                      value:
                        values:
                        - $type: ScriptedValue
                        fixedValue:
                          $type: StringTestValue
                          value: application/json
                protocol: 1
                keepAlive1_1:
                  bool: true
            messageExchangePattern:
              inverted: true
          outputProviders:
            requestHeader:
              $type: HTTPNamedToolOutputProvider
              menuName: Transport Header
              name: Request Transport Header
            responseHeader:
              $type: HTTPNamedToolOutputProvider
              menuName: Transport Header
              name: Response Transport Header
            xmlRequestOutput:
              $type: NamedXMLToolOutputProvider
              menuName: Traffic
              name: Request Traffic
            trafficOutput:
              m_name: Traffic Stream
            objectOutput:
              $type: ObjectOutputProvider
              outputTools:
              - $type: TrafficViewer
                iconName: TrafficViewer
                name: Traffic Viewer
                showRequestHeaders: true
                showResponseHeaders: true
              name: Traffic Object
          literal:
            use: 1
            text:
              MessagingClient_LiteralMessage: ""
              type: application/json
          mode: Literal
          literalQuery:
            isPropertiesRef: true
          literalPath:
            pathElements:
            - values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                value: positions
            - values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                value: "{positionId}"
          constrainedPath:
            pathParameters:
            - $type: ElementValue
              writeType: true
              hasReference: true
              qnameAsString: :positionId
              replacedColumn: ""
              values:
              - $type: IntegerValue
                replacedColumn: ""
                value: 0
          resourceMethod:
            resourceId: "/positions/{positionId}"
            httpMethod: GET
          resourceMode: 3
          baseUrl:
            values:
            - $type: ScriptedValue
            - $type: WadlTestValue
              value: http://18.237.146.177:8090/parabank/services/bank
            fixedValue:
              $type: StringTestValue
              value: "${BASEURL}"
    - $type: TestSuite
      testLogic: true
      testID: 845
      enabled: true
      name: "/positions/{positionId}/{startDate}/{endDate}"
      profileMappingID: 21
      tests:
      - $type: RESTClientToolTest
        testLogic: true
        testID: 846
        enabled: true
        name: "/positions/{positionId}/{startDate}/{endDate} - GET"
        performanceGroup: 19
        tool:
          $type: RESTClient
          iconName: RESTClient
          name: "/positions/{positionId}/{startDate}/{endDate} - GET"
          formJson:
            value:
              $type: ElementValue
              writeType: true
              hasReference: true
              qnameAsString: :root
              replacedColumn: ""
              values:
              - $type: ComplexValue
                replacedColumn: ""
                attributes:
                - replacedColumn: ""
                  value:
                    $type: StringValue
                    replacedColumn: ""
                    value: object
                  useValue: true
                compositorValue: true
                compositorValueObj:
                  replacedColumn: ""
                  values:
                    $type: CompositorValueSetCollectionSet
                    set:
                    - $type: CompositorValueSet
            elementTypeName: root
          hasServiceInfo: true
          serviceInfo:
            serviceDescriptor:
              $type: StandardServiceDescriptor
              location: http://18.237.146.177:8090/parabank/services/bank/openapi.yaml
            serviceName: ""
            versionName: ""
          jsonBuilder:
            hasValue: true
            value:
              $type: JSONObjectValue
              nameIsNull: true
          xmlBuilder: false
          schemaURL:
            MessagingClient_SchemaLocation: "${SWAGGER}"
          formInput:
            value:
              $type: ElementValue
              writeType: true
              hasReference: true
              qnameAsString: ":"
              replacedColumn: ""
              values:
              - $type: ComplexValue
                replacedColumn: ""
                compositorValue: true
                compositorValueObj:
                  replacedColumn: ""
                  values:
                    $type: CompositorValueSetCollectionSet
                    set:
                    - $type: CompositorValueSet
          jmsMessageOutputProvider:
            $type: JMSMessageOutputProvider
            jmsOutputProviderRequest:
              $type: JMSOutputProvider
              name: Request Object
              menuName: Object
            jmsOutputProviderResponse:
              $type: JMSOutputProvider
              name: Response Message Object
              menuName: Message Object
          validResponseRange:
            validResponseRange:
              values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                validResponseRange: 200
          router:
            values:
            - $type: ScriptedValue
            fixedValue:
              $type: StringTestValue
              HTTPClient_Endpoint: "${BASEURL}/positions/{positionId}/{startDate}/{endDate}"
          transportProperties:
            manager:
              protocol: 1
              properties:
              - $type: HTTPClientHTTPProperties
                followRedirects:
                  bool: true
                common:
                  method:
                    values:
                    - $type: ScriptedValue
                    fixedValue:
                      $type: HTTPMethodTestValue
                      method: GET
                  httpHeaders:
                    properties:
                    - name: Accept
                      value:
                        values:
                        - $type: ScriptedValue
                        fixedValue:
                          $type: StringTestValue
                          value: application/json
                protocol: 1
                keepAlive1_1:
                  bool: true
            messageExchangePattern:
              inverted: true
          outputProviders:
            requestHeader:
              $type: HTTPNamedToolOutputProvider
              menuName: Transport Header
              name: Request Transport Header
            responseHeader:
              $type: HTTPNamedToolOutputProvider
              menuName: Transport Header
              name: Response Transport Header
            xmlRequestOutput:
              $type: NamedXMLToolOutputProvider
              menuName: Traffic
              name: Request Traffic
            trafficOutput:
              m_name: Traffic Stream
            objectOutput:
              $type: ObjectOutputProvider
              outputTools:
              - $type: TrafficViewer
                iconName: TrafficViewer
                name: Traffic Viewer
                showRequestHeaders: true
                showResponseHeaders: true
              name: Traffic Object
          literal:
            use: 1
            text:
              MessagingClient_LiteralMessage: ""
              type: application/json
          mode: Literal
          literalQuery:
            isPropertiesRef: true
          literalPath:
            pathElements:
            - values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                value: positions
            - values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                value: "{positionId}"
            - values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                value: "{startDate}"
            - values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                value: "{endDate}"
          constrainedPath:
            pathParameters:
            - $type: ElementValue
              writeType: true
              hasReference: true
              qnameAsString: :positionId
              replacedColumn: ""
              values:
              - $type: IntegerValue
                replacedColumn: ""
                value: 0
            - $type: ElementValue
              writeType: true
              type:
                $type: ElementType
                hash: 1
                localName: startDate
                bodyType:
                  $type: StringType
                  hash: 2
              replacedColumn: ""
              values:
              - $type: StringValue
                replacedColumn: ""
                value: ""
            - $type: ElementValue
              writeType: true
              type:
                $type: ElementType
                hash: 1
                localName: endDate
                bodyType:
                  $type: StringType
                  hash: 2
              replacedColumn: ""
              values:
              - $type: StringValue
                replacedColumn: ""
                value: ""
          resourceMethod:
            resourceId: "/positions/{positionId}/{startDate}/{endDate}"
            httpMethod: GET
          resourceMode: 3
          baseUrl:
            values:
            - $type: ScriptedValue
            - $type: WadlTestValue
              value: http://18.237.146.177:8090/parabank/services/bank
            fixedValue:
              $type: StringTestValue
              value: "${BASEURL}"
    - $type: TestSuite
      testLogic: true
      testID: 847
      enabled: true
      name: /requestLoan
      profileMappingID: 22
      tests:
      - $type: RESTClientToolTest
        testLogic: true
        testID: 848
        enabled: true
        name: /requestLoan - POST
        performanceGroup: 20
        tool:
          $type: RESTClient
          iconName: RESTClient
          name: /requestLoan - POST
          formJson:
            value:
              $type: ElementValue
              writeType: true
              hasReference: true
              qnameAsString: :root
              replacedColumn: ""
              values:
              - $type: ComplexValue
                replacedColumn: ""
                attributes:
                - replacedColumn: ""
                  value:
                    $type: StringValue
                    replacedColumn: ""
                    value: object
                  useValue: true
                compositorValue: true
                compositorValueObj:
                  replacedColumn: ""
                  values:
                    $type: CompositorValueSetCollectionSet
                    set:
                    - $type: CompositorValueSet
            elementTypeName: root
          hasServiceInfo: true
          serviceInfo:
            serviceDescriptor:
              $type: StandardServiceDescriptor
              location: http://18.237.146.177:8090/parabank/services/bank/openapi.yaml
            serviceName: ""
            versionName: ""
          jsonBuilder:
            hasValue: true
            value:
              $type: JSONObjectValue
              nameIsNull: true
          xmlBuilder: false
          schemaURL:
            MessagingClient_SchemaLocation: "${SWAGGER}"
          formInput:
            value:
              $type: ElementValue
              writeType: true
              hasReference: true
              qnameAsString: ":"
              replacedColumn: ""
              values:
              - $type: ComplexValue
                replacedColumn: ""
                compositorValue: true
                compositorValueObj:
                  replacedColumn: ""
                  values:
                    $type: CompositorValueSetCollectionSet
                    set:
                    - $type: CompositorValueSet
          jmsMessageOutputProvider:
            $type: JMSMessageOutputProvider
            jmsOutputProviderRequest:
              $type: JMSOutputProvider
              name: Request Object
              menuName: Object
            jmsOutputProviderResponse:
              $type: JMSOutputProvider
              name: Response Message Object
              menuName: Message Object
          validResponseRange:
            validResponseRange:
              values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                validResponseRange: 200
          router:
            values:
            - $type: ScriptedValue
            fixedValue:
              $type: StringTestValue
              HTTPClient_Endpoint: "${BASEURL}/requestLoan?customerId=0&amount=0.0&downPayment=0.0&fromAccountId=0"
          urlParameters:
            properties:
            - name: customerId
              value:
                values:
                - $type: ScriptedValue
                fixedValue:
                  $type: StringTestValue
                  value: 0
            - name: amount
              value:
                values:
                - $type: ScriptedValue
                fixedValue:
                  $type: StringTestValue
                  value: 0.0
            - name: downPayment
              value:
                values:
                - $type: ScriptedValue
                fixedValue:
                  $type: StringTestValue
                  value: 0.0
            - name: fromAccountId
              value:
                values:
                - $type: ScriptedValue
                fixedValue:
                  $type: StringTestValue
                  value: 0
          transportProperties:
            manager:
              protocol: 1
              properties:
              - $type: HTTPClientHTTPProperties
                followRedirects:
                  bool: true
                common:
                  method:
                    values:
                    - $type: ScriptedValue
                    fixedValue:
                      $type: HTTPMethodTestValue
                      method: POST
                  httpHeaders:
                    properties:
                    - name: Accept
                      value:
                        values:
                        - $type: ScriptedValue
                        fixedValue:
                          $type: StringTestValue
                          value: application/json
                protocol: 1
                keepAlive1_1:
                  bool: true
            messageExchangePattern:
              inverted: true
          outputProviders:
            requestHeader:
              $type: HTTPNamedToolOutputProvider
              menuName: Transport Header
              name: Request Transport Header
            responseHeader:
              $type: HTTPNamedToolOutputProvider
              menuName: Transport Header
              name: Response Transport Header
            xmlRequestOutput:
              $type: NamedXMLToolOutputProvider
              menuName: Traffic
              name: Request Traffic
            trafficOutput:
              m_name: Traffic Stream
            objectOutput:
              $type: ObjectOutputProvider
              outputTools:
              - $type: TrafficViewer
                iconName: TrafficViewer
                name: Traffic Viewer
                showRequestHeaders: true
                showResponseHeaders: true
              name: Traffic Object
          literal:
            use: 1
            text:
              MessagingClient_LiteralMessage: ""
              type: application/json
          mode: Literal
          literalQuery:
            isPropertiesRef: true
          constrainedQuery:
            parameters:
            - $type: ElementValue
              writeType: true
              hasReference: true
              qnameAsString: :customerId
              replacedColumn: ""
              values:
              - $type: IntegerValue
                replacedColumn: ""
                value: 0
            - $type: ElementValue
              writeType: true
              hasReference: true
              qnameAsString: :amount
              replacedColumn: ""
              values:
              - $type: DecimalValue
                replacedColumn: ""
                value: 0.0
            - $type: ElementValue
              writeType: true
              type:
                $type: ElementType
                hash: 1
                defaultValue: 0.0
                localName: downPayment
                bodyType:
                  $type: DecimalType
                  hash: 2
              replacedColumn: ""
              values:
              - $type: DecimalValue
                replacedColumn: ""
                value: 0.0
            - $type: ElementValue
              writeType: true
              hasReference: true
              qnameAsString: :fromAccountId
              replacedColumn: ""
              values:
              - $type: IntegerValue
                replacedColumn: ""
                value: 0
          literalPath:
            pathElements:
            - values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                value: requestLoan
          resourceMethod:
            resourceId: /requestLoan
            httpMethod: POST
          resourceMode: 3
          baseUrl:
            values:
            - $type: ScriptedValue
            - $type: WadlTestValue
              value: http://18.237.146.177:8090/parabank/services/bank
            fixedValue:
              $type: StringTestValue
              value: "${BASEURL}"
    - $type: TestSuite
      testLogic: true
      testID: 849
      enabled: true
      name: "/setParameter/{name}/{value}"
      profileMappingID: 23
      tests:
      - $type: RESTClientToolTest
        testLogic: true
        testID: 850
        enabled: true
        name: "/setParameter/{name}/{value} - POST"
        performanceGroup: 21
        tool:
          $type: RESTClient
          iconName: RESTClient
          name: "/setParameter/{name}/{value} - POST"
          formJson:
            value:
              $type: ElementValue
              writeType: true
              hasReference: true
              qnameAsString: :root
              replacedColumn: ""
              values:
              - $type: ComplexValue
                replacedColumn: ""
                attributes:
                - replacedColumn: ""
                  value:
                    $type: StringValue
                    replacedColumn: ""
                    value: object
                  useValue: true
                compositorValue: true
                compositorValueObj:
                  replacedColumn: ""
                  values:
                    $type: CompositorValueSetCollectionSet
                    set:
                    - $type: CompositorValueSet
            elementTypeName: root
          hasServiceInfo: true
          serviceInfo:
            serviceDescriptor:
              $type: StandardServiceDescriptor
              location: http://18.237.146.177:8090/parabank/services/bank/openapi.yaml
            serviceName: ""
            versionName: ""
          jsonBuilder:
            hasValue: true
            value:
              $type: JSONObjectValue
              nameIsNull: true
          xmlBuilder: false
          schemaURL:
            MessagingClient_SchemaLocation: "${SWAGGER}"
          formInput:
            value:
              $type: ElementValue
              writeType: true
              hasReference: true
              qnameAsString: ":"
              replacedColumn: ""
              values:
              - $type: ComplexValue
                replacedColumn: ""
                compositorValue: true
                compositorValueObj:
                  replacedColumn: ""
                  values:
                    $type: CompositorValueSetCollectionSet
                    set:
                    - $type: CompositorValueSet
          jmsMessageOutputProvider:
            $type: JMSMessageOutputProvider
            jmsOutputProviderRequest:
              $type: JMSOutputProvider
              name: Request Object
              menuName: Object
            jmsOutputProviderResponse:
              $type: JMSOutputProvider
              name: Response Message Object
              menuName: Message Object
          validResponseRange:
            validResponseRange:
              values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                validResponseRange: 200
          router:
            values:
            - $type: ScriptedValue
            fixedValue:
              $type: StringTestValue
              HTTPClient_Endpoint: "${BASEURL}/setParameter/{name}/{value}"
          transportProperties:
            manager:
              protocol: 1
              properties:
              - $type: HTTPClientHTTPProperties
                followRedirects:
                  bool: true
                common:
                  method:
                    values:
                    - $type: ScriptedValue
                    fixedValue:
                      $type: HTTPMethodTestValue
                      method: POST
                  httpHeaders:
                    properties:
                    - name: Accept
                      value:
                        values:
                        - $type: ScriptedValue
                        fixedValue:
                          $type: StringTestValue
                          value: application/json
                protocol: 1
                keepAlive1_1:
                  bool: true
            messageExchangePattern:
              inverted: true
          outputProviders:
            requestHeader:
              $type: HTTPNamedToolOutputProvider
              menuName: Transport Header
              name: Request Transport Header
            responseHeader:
              $type: HTTPNamedToolOutputProvider
              menuName: Transport Header
              name: Response Transport Header
            xmlRequestOutput:
              $type: NamedXMLToolOutputProvider
              menuName: Traffic
              name: Request Traffic
            trafficOutput:
              m_name: Traffic Stream
            objectOutput:
              $type: ObjectOutputProvider
              outputTools:
              - $type: TrafficViewer
                iconName: TrafficViewer
                name: Traffic Viewer
                showRequestHeaders: true
                showResponseHeaders: true
              name: Traffic Object
          literal:
            use: 1
            text:
              MessagingClient_LiteralMessage: ""
              type: application/json
          mode: Literal
          literalQuery:
            isPropertiesRef: true
          literalPath:
            pathElements:
            - values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                value: setParameter
            - values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                value: "{name}"
            - values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                value: "{value}"
          constrainedPath:
            pathParameters:
            - $type: ElementValue
              writeType: true
              hasReference: true
              qnameAsString: :name
              replacedColumn: ""
              values:
              - $type: StringValue
                replacedColumn: ""
                value: ""
            - $type: ElementValue
              writeType: true
              type:
                $type: ElementType
                hash: 1
                localName: value
                bodyType:
                  $type: StringType
                  hash: 2
              replacedColumn: ""
              values:
              - $type: StringValue
                replacedColumn: ""
                value: ""
          resourceMethod:
            resourceId: "/setParameter/{name}/{value}"
            httpMethod: POST
          resourceMode: 3
          baseUrl:
            values:
            - $type: ScriptedValue
            - $type: WadlTestValue
              value: http://18.237.146.177:8090/parabank/services/bank
            fixedValue:
              $type: StringTestValue
              value: "${BASEURL}"
    - $type: TestSuite
      testLogic: true
      testID: 851
      enabled: true
      name: /shutdownJmsListener
      profileMappingID: 24
      tests:
      - $type: RESTClientToolTest
        testLogic: true
        testID: 852
        enabled: true
        name: /shutdownJmsListener - POST
        performanceGroup: 22
        tool:
          $type: RESTClient
          iconName: RESTClient
          name: /shutdownJmsListener - POST
          formJson:
            value:
              $type: ElementValue
              writeType: true
              hasReference: true
              qnameAsString: :root
              replacedColumn: ""
              values:
              - $type: ComplexValue
                replacedColumn: ""
                attributes:
                - replacedColumn: ""
                  value:
                    $type: StringValue
                    replacedColumn: ""
                    value: object
                  useValue: true
                compositorValue: true
                compositorValueObj:
                  replacedColumn: ""
                  values:
                    $type: CompositorValueSetCollectionSet
                    set:
                    - $type: CompositorValueSet
            elementTypeName: root
          hasServiceInfo: true
          serviceInfo:
            serviceDescriptor:
              $type: StandardServiceDescriptor
              location: http://18.237.146.177:8090/parabank/services/bank/openapi.yaml
            serviceName: ""
            versionName: ""
          jsonBuilder:
            hasValue: true
            value:
              $type: JSONObjectValue
              nameIsNull: true
          xmlBuilder: false
          schemaURL:
            MessagingClient_SchemaLocation: "${SWAGGER}"
          formInput:
            value:
              $type: ElementValue
              writeType: true
              hasReference: true
              qnameAsString: ":"
              replacedColumn: ""
              values:
              - $type: ComplexValue
                replacedColumn: ""
                compositorValue: true
                compositorValueObj:
                  replacedColumn: ""
                  values:
                    $type: CompositorValueSetCollectionSet
                    set:
                    - $type: CompositorValueSet
          jmsMessageOutputProvider:
            $type: JMSMessageOutputProvider
            jmsOutputProviderRequest:
              $type: JMSOutputProvider
              name: Request Object
              menuName: Object
            jmsOutputProviderResponse:
              $type: JMSOutputProvider
              name: Response Message Object
              menuName: Message Object
          validResponseRange:
            validResponseRange:
              values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                validResponseRange: 200
          router:
            values:
            - $type: ScriptedValue
            fixedValue:
              $type: StringTestValue
              HTTPClient_Endpoint: "${BASEURL}/shutdownJmsListener"
          transportProperties:
            manager:
              protocol: 1
              properties:
              - $type: HTTPClientHTTPProperties
                followRedirects:
                  bool: true
                common:
                  method:
                    values:
                    - $type: ScriptedValue
                    fixedValue:
                      $type: HTTPMethodTestValue
                      method: POST
                  httpHeaders:
                    properties:
                    - name: Accept
                      value:
                        values:
                        - $type: ScriptedValue
                        fixedValue:
                          $type: StringTestValue
                          value: application/json
                protocol: 1
                keepAlive1_1:
                  bool: true
            messageExchangePattern:
              inverted: true
          outputProviders:
            requestHeader:
              $type: HTTPNamedToolOutputProvider
              menuName: Transport Header
              name: Request Transport Header
            responseHeader:
              $type: HTTPNamedToolOutputProvider
              menuName: Transport Header
              name: Response Transport Header
            xmlRequestOutput:
              $type: NamedXMLToolOutputProvider
              menuName: Traffic
              name: Request Traffic
            trafficOutput:
              m_name: Traffic Stream
            objectOutput:
              $type: ObjectOutputProvider
              outputTools:
              - $type: TrafficViewer
                iconName: TrafficViewer
                name: Traffic Viewer
                showRequestHeaders: true
                showResponseHeaders: true
              name: Traffic Object
          literal:
            use: 1
            text:
              MessagingClient_LiteralMessage: ""
              type: application/json
          mode: Literal
          literalQuery:
            isPropertiesRef: true
          literalPath:
            pathElements:
            - values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                value: shutdownJmsListener
          resourceMethod:
            resourceId: /shutdownJmsListener
            httpMethod: POST
          resourceMode: 3
          baseUrl:
            values:
            - $type: ScriptedValue
            - $type: WadlTestValue
              value: http://18.237.146.177:8090/parabank/services/bank
            fixedValue:
              $type: StringTestValue
              value: "${BASEURL}"
    - $type: TestSuite
      testLogic: true
      testID: 853
      enabled: true
      name: /startupJmsListener
      profileMappingID: 25
      tests:
      - $type: RESTClientToolTest
        testLogic: true
        testID: 854
        enabled: true
        name: /startupJmsListener - POST
        performanceGroup: 23
        tool:
          $type: RESTClient
          iconName: RESTClient
          name: /startupJmsListener - POST
          formJson:
            value:
              $type: ElementValue
              writeType: true
              hasReference: true
              qnameAsString: :root
              replacedColumn: ""
              values:
              - $type: ComplexValue
                replacedColumn: ""
                attributes:
                - replacedColumn: ""
                  value:
                    $type: StringValue
                    replacedColumn: ""
                    value: object
                  useValue: true
                compositorValue: true
                compositorValueObj:
                  replacedColumn: ""
                  values:
                    $type: CompositorValueSetCollectionSet
                    set:
                    - $type: CompositorValueSet
            elementTypeName: root
          hasServiceInfo: true
          serviceInfo:
            serviceDescriptor:
              $type: StandardServiceDescriptor
              location: http://18.237.146.177:8090/parabank/services/bank/openapi.yaml
            serviceName: ""
            versionName: ""
          jsonBuilder:
            hasValue: true
            value:
              $type: JSONObjectValue
              nameIsNull: true
          xmlBuilder: false
          schemaURL:
            MessagingClient_SchemaLocation: "${SWAGGER}"
          formInput:
            value:
              $type: ElementValue
              writeType: true
              hasReference: true
              qnameAsString: ":"
              replacedColumn: ""
              values:
              - $type: ComplexValue
                replacedColumn: ""
                compositorValue: true
                compositorValueObj:
                  replacedColumn: ""
                  values:
                    $type: CompositorValueSetCollectionSet
                    set:
                    - $type: CompositorValueSet
          jmsMessageOutputProvider:
            $type: JMSMessageOutputProvider
            jmsOutputProviderRequest:
              $type: JMSOutputProvider
              name: Request Object
              menuName: Object
            jmsOutputProviderResponse:
              $type: JMSOutputProvider
              name: Response Message Object
              menuName: Message Object
          validResponseRange:
            validResponseRange:
              values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                validResponseRange: 200
          router:
            values:
            - $type: ScriptedValue
            fixedValue:
              $type: StringTestValue
              HTTPClient_Endpoint: "${BASEURL}/startupJmsListener"
          transportProperties:
            manager:
              protocol: 1
              properties:
              - $type: HTTPClientHTTPProperties
                followRedirects:
                  bool: true
                common:
                  method:
                    values:
                    - $type: ScriptedValue
                    fixedValue:
                      $type: HTTPMethodTestValue
                      method: POST
                  httpHeaders:
                    properties:
                    - name: Accept
                      value:
                        values:
                        - $type: ScriptedValue
                        fixedValue:
                          $type: StringTestValue
                          value: application/json
                protocol: 1
                keepAlive1_1:
                  bool: true
            messageExchangePattern:
              inverted: true
          outputProviders:
            requestHeader:
              $type: HTTPNamedToolOutputProvider
              menuName: Transport Header
              name: Request Transport Header
            responseHeader:
              $type: HTTPNamedToolOutputProvider
              menuName: Transport Header
              name: Response Transport Header
            xmlRequestOutput:
              $type: NamedXMLToolOutputProvider
              menuName: Traffic
              name: Request Traffic
            trafficOutput:
              m_name: Traffic Stream
            objectOutput:
              $type: ObjectOutputProvider
              outputTools:
              - $type: TrafficViewer
                iconName: TrafficViewer
                name: Traffic Viewer
                showRequestHeaders: true
                showResponseHeaders: true
              name: Traffic Object
          literal:
            use: 1
            text:
              MessagingClient_LiteralMessage: ""
              type: application/json
          mode: Literal
          literalQuery:
            isPropertiesRef: true
          literalPath:
            pathElements:
            - values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                value: startupJmsListener
          resourceMethod:
            resourceId: /startupJmsListener
            httpMethod: POST
          resourceMode: 3
          baseUrl:
            values:
            - $type: ScriptedValue
            - $type: WadlTestValue
              value: http://18.237.146.177:8090/parabank/services/bank
            fixedValue:
              $type: StringTestValue
              value: "${BASEURL}"
    - $type: TestSuite
      testLogic: true
      testID: 855
      enabled: true
      name: "/transactions/{transactionId}"
      profileMappingID: 26
      tests:
      - $type: RESTClientToolTest
        testLogic: true
        testID: 856
        enabled: true
        name: "/transactions/{transactionId} - GET"
        performanceGroup: 24
        tool:
          $type: RESTClient
          iconName: RESTClient
          name: "/transactions/{transactionId} - GET"
          formJson:
            value:
              $type: ElementValue
              writeType: true
              hasReference: true
              qnameAsString: :root
              replacedColumn: ""
              values:
              - $type: ComplexValue
                replacedColumn: ""
                attributes:
                - replacedColumn: ""
                  value:
                    $type: StringValue
                    replacedColumn: ""
                    value: object
                  useValue: true
                compositorValue: true
                compositorValueObj:
                  replacedColumn: ""
                  values:
                    $type: CompositorValueSetCollectionSet
                    set:
                    - $type: CompositorValueSet
            elementTypeName: root
          hasServiceInfo: true
          serviceInfo:
            serviceDescriptor:
              $type: StandardServiceDescriptor
              location: http://18.237.146.177:8090/parabank/services/bank/openapi.yaml
            serviceName: ""
            versionName: ""
          jsonBuilder:
            hasValue: true
            value:
              $type: JSONObjectValue
              nameIsNull: true
          xmlBuilder: false
          schemaURL:
            MessagingClient_SchemaLocation: "${SWAGGER}"
          formInput:
            value:
              $type: ElementValue
              writeType: true
              hasReference: true
              qnameAsString: ":"
              replacedColumn: ""
              values:
              - $type: ComplexValue
                replacedColumn: ""
                compositorValue: true
                compositorValueObj:
                  replacedColumn: ""
                  values:
                    $type: CompositorValueSetCollectionSet
                    set:
                    - $type: CompositorValueSet
          jmsMessageOutputProvider:
            $type: JMSMessageOutputProvider
            jmsOutputProviderRequest:
              $type: JMSOutputProvider
              name: Request Object
              menuName: Object
            jmsOutputProviderResponse:
              $type: JMSOutputProvider
              name: Response Message Object
              menuName: Message Object
          validResponseRange:
            validResponseRange:
              values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                validResponseRange: 200
          router:
            values:
            - $type: ScriptedValue
            fixedValue:
              $type: StringTestValue
              HTTPClient_Endpoint: "${BASEURL}/transactions/{transactionId}"
          transportProperties:
            manager:
              protocol: 1
              properties:
              - $type: HTTPClientHTTPProperties
                followRedirects:
                  bool: true
                common:
                  method:
                    values:
                    - $type: ScriptedValue
                    fixedValue:
                      $type: HTTPMethodTestValue
                      method: GET
                  httpHeaders:
                    properties:
                    - name: Accept
                      value:
                        values:
                        - $type: ScriptedValue
                        fixedValue:
                          $type: StringTestValue
                          value: application/json
                protocol: 1
                keepAlive1_1:
                  bool: true
            messageExchangePattern:
              inverted: true
          outputProviders:
            requestHeader:
              $type: HTTPNamedToolOutputProvider
              menuName: Transport Header
              name: Request Transport Header
            responseHeader:
              $type: HTTPNamedToolOutputProvider
              menuName: Transport Header
              name: Response Transport Header
            xmlRequestOutput:
              $type: NamedXMLToolOutputProvider
              menuName: Traffic
              name: Request Traffic
            trafficOutput:
              m_name: Traffic Stream
            objectOutput:
              $type: ObjectOutputProvider
              outputTools:
              - $type: TrafficViewer
                iconName: TrafficViewer
                name: Traffic Viewer
                showRequestHeaders: true
                showResponseHeaders: true
              name: Traffic Object
          literal:
            use: 1
            text:
              MessagingClient_LiteralMessage: ""
              type: application/json
          mode: Literal
          literalQuery:
            isPropertiesRef: true
          literalPath:
            pathElements:
            - values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                value: transactions
            - values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                value: "{transactionId}"
          constrainedPath:
            pathParameters:
            - $type: ElementValue
              writeType: true
              type:
                $type: ElementType
                hash: 1
                defaultValue: 0
                localName: transactionId
                bodyType:
                  $type: IntegerType
                  hash: 2
              replacedColumn: ""
              values:
              - $type: IntegerValue
                replacedColumn: ""
                value: 0
          resourceMethod:
            resourceId: "/transactions/{transactionId}"
            httpMethod: GET
          resourceMode: 3
          baseUrl:
            values:
            - $type: ScriptedValue
            - $type: WadlTestValue
              value: http://18.237.146.177:8090/parabank/services/bank
            fixedValue:
              $type: StringTestValue
              value: "${BASEURL}"
    - $type: TestSuite
      testLogic: true
      testID: 857
      enabled: true
      name: /transfer
      profileMappingID: 27
      tests:
      - $type: RESTClientToolTest
        testLogic: true
        testID: 858
        enabled: true
        name: /transfer - POST
        performanceGroup: 25
        tool:
          $type: RESTClient
          iconName: RESTClient
          name: /transfer - POST
          formJson:
            value:
              $type: ElementValue
              writeType: true
              hasReference: true
              qnameAsString: :root
              replacedColumn: ""
              values:
              - $type: ComplexValue
                replacedColumn: ""
                attributes:
                - replacedColumn: ""
                  value:
                    $type: StringValue
                    replacedColumn: ""
                    value: object
                  useValue: true
                compositorValue: true
                compositorValueObj:
                  replacedColumn: ""
                  values:
                    $type: CompositorValueSetCollectionSet
                    set:
                    - $type: CompositorValueSet
            elementTypeName: root
          hasServiceInfo: true
          serviceInfo:
            serviceDescriptor:
              $type: StandardServiceDescriptor
              location: http://18.237.146.177:8090/parabank/services/bank/openapi.yaml
            serviceName: ""
            versionName: ""
          jsonBuilder:
            hasValue: true
            value:
              $type: JSONObjectValue
              nameIsNull: true
          xmlBuilder: false
          schemaURL:
            MessagingClient_SchemaLocation: "${SWAGGER}"
          formInput:
            value:
              $type: ElementValue
              writeType: true
              hasReference: true
              qnameAsString: ":"
              replacedColumn: ""
              values:
              - $type: ComplexValue
                replacedColumn: ""
                compositorValue: true
                compositorValueObj:
                  replacedColumn: ""
                  values:
                    $type: CompositorValueSetCollectionSet
                    set:
                    - $type: CompositorValueSet
          jmsMessageOutputProvider:
            $type: JMSMessageOutputProvider
            jmsOutputProviderRequest:
              $type: JMSOutputProvider
              name: Request Object
              menuName: Object
            jmsOutputProviderResponse:
              $type: JMSOutputProvider
              name: Response Message Object
              menuName: Message Object
          validResponseRange:
            validResponseRange:
              values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                validResponseRange: 200
          router:
            values:
            - $type: ScriptedValue
            fixedValue:
              $type: StringTestValue
              HTTPClient_Endpoint: "${BASEURL}/transfer?fromAccountId=0&toAccountId=0&amount=0.0"
          urlParameters:
            properties:
            - name: fromAccountId
              value:
                values:
                - $type: ScriptedValue
                fixedValue:
                  $type: StringTestValue
                  value: 0
            - name: toAccountId
              value:
                values:
                - $type: ScriptedValue
                fixedValue:
                  $type: StringTestValue
                  value: 0
            - name: amount
              value:
                values:
                - $type: ScriptedValue
                fixedValue:
                  $type: StringTestValue
                  value: 0.0
          transportProperties:
            manager:
              protocol: 1
              properties:
              - $type: HTTPClientHTTPProperties
                followRedirects:
                  bool: true
                common:
                  method:
                    values:
                    - $type: ScriptedValue
                    fixedValue:
                      $type: HTTPMethodTestValue
                      method: POST
                  httpHeaders:
                    properties:
                    - name: Accept
                      value:
                        values:
                        - $type: ScriptedValue
                        fixedValue:
                          $type: StringTestValue
                          value: application/json
                protocol: 1
                keepAlive1_1:
                  bool: true
            messageExchangePattern:
              inverted: true
          outputProviders:
            requestHeader:
              $type: HTTPNamedToolOutputProvider
              menuName: Transport Header
              name: Request Transport Header
            responseHeader:
              $type: HTTPNamedToolOutputProvider
              menuName: Transport Header
              name: Response Transport Header
            xmlRequestOutput:
              $type: NamedXMLToolOutputProvider
              menuName: Traffic
              name: Request Traffic
            trafficOutput:
              m_name: Traffic Stream
            objectOutput:
              $type: ObjectOutputProvider
              outputTools:
              - $type: TrafficViewer
                iconName: TrafficViewer
                name: Traffic Viewer
                showRequestHeaders: true
                showResponseHeaders: true
              name: Traffic Object
          literal:
            use: 1
            text:
              MessagingClient_LiteralMessage: ""
              type: application/json
          mode: Literal
          literalQuery:
            isPropertiesRef: true
          constrainedQuery:
            parameters:
            - $type: ElementValue
              writeType: true
              hasReference: true
              qnameAsString: :fromAccountId
              replacedColumn: ""
              values:
              - $type: IntegerValue
                replacedColumn: ""
                value: 0
            - $type: ElementValue
              writeType: true
              type:
                $type: ElementType
                hash: 1
                defaultValue: 0
                localName: toAccountId
                bodyType:
                  $type: IntegerType
                  hash: 2
              replacedColumn: ""
              values:
              - $type: IntegerValue
                replacedColumn: ""
                value: 0
            - $type: ElementValue
              writeType: true
              hasReference: true
              qnameAsString: :amount
              replacedColumn: ""
              values:
              - $type: DecimalValue
                replacedColumn: ""
                value: 0.0
          literalPath:
            pathElements:
            - values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                value: transfer
          resourceMethod:
            resourceId: /transfer
            httpMethod: POST
          resourceMode: 3
          baseUrl:
            values:
            - $type: ScriptedValue
            - $type: WadlTestValue
              value: http://18.237.146.177:8090/parabank/services/bank
            fixedValue:
              $type: StringTestValue
              value: "${BASEURL}"
    - $type: TestSuite
      testLogic: true
      testID: 859
      enabled: true
      name: /withdraw
      profileMappingID: 28
      tests:
      - $type: RESTClientToolTest
        testLogic: true
        testID: 860
        enabled: true
        name: /withdraw - POST
        performanceGroup: 26
        tool:
          $type: RESTClient
          iconName: RESTClient
          name: /withdraw - POST
          formJson:
            value:
              $type: ElementValue
              writeType: true
              hasReference: true
              qnameAsString: :root
              replacedColumn: ""
              values:
              - $type: ComplexValue
                replacedColumn: ""
                attributes:
                - replacedColumn: ""
                  value:
                    $type: StringValue
                    replacedColumn: ""
                    value: object
                  useValue: true
                compositorValue: true
                compositorValueObj:
                  replacedColumn: ""
                  values:
                    $type: CompositorValueSetCollectionSet
                    set:
                    - $type: CompositorValueSet
            elementTypeName: root
          hasServiceInfo: true
          serviceInfo:
            serviceDescriptor:
              $type: StandardServiceDescriptor
              location: http://18.237.146.177:8090/parabank/services/bank/openapi.yaml
            serviceName: ""
            versionName: ""
          jsonBuilder:
            hasValue: true
            value:
              $type: JSONObjectValue
              nameIsNull: true
          xmlBuilder: false
          schemaURL:
            MessagingClient_SchemaLocation: "${SWAGGER}"
          formInput:
            value:
              $type: ElementValue
              writeType: true
              hasReference: true
              qnameAsString: ":"
              replacedColumn: ""
              values:
              - $type: ComplexValue
                replacedColumn: ""
                compositorValue: true
                compositorValueObj:
                  replacedColumn: ""
                  values:
                    $type: CompositorValueSetCollectionSet
                    set:
                    - $type: CompositorValueSet
          jmsMessageOutputProvider:
            $type: JMSMessageOutputProvider
            jmsOutputProviderRequest:
              $type: JMSOutputProvider
              name: Request Object
              menuName: Object
            jmsOutputProviderResponse:
              $type: JMSOutputProvider
              name: Response Message Object
              menuName: Message Object
          validResponseRange:
            validResponseRange:
              values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                validResponseRange: 200
          router:
            values:
            - $type: ScriptedValue
            fixedValue:
              $type: StringTestValue
              HTTPClient_Endpoint: "${BASEURL}/withdraw?accountId=0&amount=0.0"
          urlParameters:
            properties:
            - name: accountId
              value:
                values:
                - $type: ScriptedValue
                fixedValue:
                  $type: StringTestValue
                  value: 0
            - name: amount
              value:
                values:
                - $type: ScriptedValue
                fixedValue:
                  $type: StringTestValue
                  value: 0.0
          transportProperties:
            manager:
              protocol: 1
              properties:
              - $type: HTTPClientHTTPProperties
                followRedirects:
                  bool: true
                common:
                  method:
                    values:
                    - $type: ScriptedValue
                    fixedValue:
                      $type: HTTPMethodTestValue
                      method: POST
                  httpHeaders:
                    properties:
                    - name: Accept
                      value:
                        values:
                        - $type: ScriptedValue
                        fixedValue:
                          $type: StringTestValue
                          value: application/json
                protocol: 1
                keepAlive1_1:
                  bool: true
            messageExchangePattern:
              inverted: true
          outputProviders:
            requestHeader:
              $type: HTTPNamedToolOutputProvider
              menuName: Transport Header
              name: Request Transport Header
            responseHeader:
              $type: HTTPNamedToolOutputProvider
              menuName: Transport Header
              name: Response Transport Header
            xmlRequestOutput:
              $type: NamedXMLToolOutputProvider
              menuName: Traffic
              name: Request Traffic
            trafficOutput:
              m_name: Traffic Stream
            objectOutput:
              $type: ObjectOutputProvider
              outputTools:
              - $type: TrafficViewer
                iconName: TrafficViewer
                name: Traffic Viewer
                showRequestHeaders: true
                showResponseHeaders: true
              name: Traffic Object
          literal:
            use: 1
            text:
              MessagingClient_LiteralMessage: ""
              type: application/json
          mode: Literal
          literalQuery:
            isPropertiesRef: true
          constrainedQuery:
            parameters:
            - $type: ElementValue
              writeType: true
              hasReference: true
              qnameAsString: :accountId
              replacedColumn: ""
              values:
              - $type: IntegerValue
                replacedColumn: ""
                value: 0
            - $type: ElementValue
              writeType: true
              hasReference: true
              qnameAsString: :amount
              replacedColumn: ""
              values:
              - $type: DecimalValue
                replacedColumn: ""
                value: 0.0
          literalPath:
            pathElements:
            - values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                value: withdraw
          resourceMethod:
            resourceId: /withdraw
            httpMethod: POST
          resourceMode: 3
          baseUrl:
            values:
            - $type: ScriptedValue
            - $type: WadlTestValue
              value: http://18.237.146.177:8090/parabank/services/bank
            fixedValue:
              $type: StringTestValue
              value: "${BASEURL}"
  - $type: TestSuite
    reportingSettings:
      requirementsTracking:
        prNumbers:
        - requirementType: '@req'
          requirementID: PARWH-1
          requirementURL: ""
    testLogic: true
    testFlowLogic:
      condition: true
    testID: 406
    enabled: true
    name: Basic Test
    profileMappingID: 2
    nextIdentifier: 698
    tests:
    - $type: RESTClientToolTest
      testLogic: true
      testFlowLogic:
        condition: true
      testID: 707
      enabled: true
      name: "/accounts/{accountId} - GET"
      performanceGroup: 0
      tool:
        $type: RESTClient
        iconName: RESTClient
        name: "/accounts/{accountId} - GET"
        outputTools:
        - $type: DiffTool
          iconName: Diff
          name: "Diff control generated on Apr 20, 2022 11:32:06 AM."
          differs:
          - $type: BinaryDiffer
            source:
              optionsSource: 1
          - $type: TextDiffer
          - $type: XMLDifferNew
            formXml:
              formXML:
                rootNodeExists: true
                rootNode:
                  $type: XMLElementNode
                  xmlEncoding: 2
                  value: ""
                  name: NewElement
                  showAttributes: true
            hasSoapControlSource: true
            soapControlSource:
              $type: SoapDiffControlSource
          - $type: JSONDiffer
            ignored:
            - operations:
              - true
              - false
              - false
              identifier: balance
          source:
            controls:
            - keys:
              - ""
              - ""
              row:
                refs:
                - dataSourceName: ""
                last: false
            - "{\"id\":12345,\"customerId\":12212,\"type\":\"CHECKING\",\"balance\"\
              :-37640.00}"
          mode: 3
        - $type: GenericAssertionTool
          iconName: XMLAssertor
          name: JSON Assertor
          wrappedTool:
            $type: XMLAssertionTool
            iconName: XMLAssertor
            name: XML Assertor
            assertions:
            - $type: RangeAssertion
              timestamp: 1650479807258
              name: Numeric Range Assertion
              Assertion_XPath: /root/balance
              data:
                $type: NumericRange
                lower:
                  name: Lower Bound Value
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: -100000
                upper:
                  name: Upper Bound Value
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: 5000
            message:
              $type: ExpectedXMLMessage
              message: true
          conversionStrategy:
            dataFormatName: JSON
            conversionStrategyId: JSON
            conversionStrategyClassName: com.parasoft.xml.convert.json.JsonConversionStrategy
        - $type: GenericDataBank
          iconName: XMLDataBank
          name: JSON Data Bank
          wrappedTool:
            $type: XMLtoDataSource
            iconName: XMLDataBank
            name: XML Data Bank
            selectedXPaths:
            - elementOption: 1
              contentOption: 1
              XMLDataBank_ExtractXPath: "/root/balance[1]/text()"
              mode: 1
            canonicalizeOutput: true
            xmlMessage: true
            virtualDSCreator:
              writableColumns:
              - dataSourceNames:
                - "Accounts: accountBalance"
                customName: "BasicTest: Test 1: balance"
          conversionStrategy:
            dataFormatName: JSON
            conversionStrategyId: JSON
            conversionStrategyClassName: com.parasoft.xml.convert.json.JsonConversionStrategy
        formJson:
          value:
            $type: ElementValue
            writeType: true
            hasReference: true
            qnameAsString: :root
            replacedColumn: ""
            values:
            - $type: ComplexValue
              replacedColumn: ""
              attributes:
              - replacedColumn: ""
                value:
                  $type: StringValue
                  replacedColumn: ""
                  value: object
                  xmlEncoding: 2
                useValue: true
              compositorValue: true
              compositorValueObj:
                replacedColumn: ""
                values:
                  $type: CompositorValueSetCollectionSet
                  set:
                  - $type: CompositorValueSet
          elementTypeName: root
        hasServiceInfo: true
        serviceInfo:
          serviceDescriptor:
            $type: StandardServiceDescriptor
            location: file:///C:/Users/whaaker/parasoft/soavirt_workspace_main/SOAtestDemoExamples/Parabank/Bank/swagger.yaml
          serviceName: ""
          versionName: ""
        jsonBuilder:
          hasValue: true
          value:
            $type: JSONObjectValue
            nameIsNull: true
        schemaURL:
          MessagingClient_SchemaLocation: "${SWAGGER}"
        formInput:
          value:
            $type: ElementValue
            writeType: true
            hasReference: true
            qnameAsString: ":"
            replacedColumn: ""
            values:
            - $type: ComplexValue
              replacedColumn: ""
              compositorValue: true
              compositorValueObj:
                replacedColumn: ""
                values:
                  $type: CompositorValueSetCollectionSet
                  set:
                  - $type: CompositorValueSet
        jmsMessageOutputProvider:
          $type: JMSMessageOutputProvider
          jmsOutputProviderRequest:
            $type: JMSOutputProvider
            name: Request Object
            menuName: Object
          jmsOutputProviderResponse:
            $type: JMSOutputProvider
            name: Response Message Object
            menuName: Message Object
        validResponseRange:
          validResponseRange:
            values:
            - $type: ScriptedValue
            fixedValue:
              $type: StringTestValue
              validResponseRange: 200
        router:
          values:
          - $type: ScriptedValue
          fixedValue:
            $type: StringTestValue
            HTTPClient_Endpoint: "${BASEURL}/accounts/12345?_type=json"
        urlParameters:
          properties:
          - name: _type
            value:
              values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                value: json
        transportProperties:
          manager:
            protocol: 1
            properties:
            - $type: HTTPClientHTTPProperties
              followRedirects:
                bool: true
              common:
                auth:
                  useDefault: false
                  customType: 1
                method:
                  values:
                  - $type: ScriptedValue
                  fixedValue:
                    $type: HTTPMethodTestValue
                    method: GET
                httpHeaders:
                  properties:
                  - name: Accept
                    value:
                      values:
                      - $type: ScriptedValue
                      fixedValue:
                        $type: StringTestValue
                        value: application/json
              keepAlive1_1:
                bool: true
            - $type: HTTPClientHTTPProperties
              followRedirects:
                bool: true
              common:
                auth:
                  useDefault: false
                  customType: 1
                method:
                  values:
                  - $type: ScriptedValue
                  fixedValue:
                    $type: HTTPMethodTestValue
                    method: GET
                httpHeaders:
                  properties:
                  - name: Accept
                    value:
                      values:
                      - $type: ScriptedValue
                      fixedValue:
                        $type: StringTestValue
                        value: application/json
              protocol: 1
              keepAlive1_1:
                bool: true
            - $type: NoneTransportProperties
          messageExchangePattern:
            inverted: true
        outputProviders:
          requestHeader:
            $type: HTTPNamedToolOutputProvider
            menuName: Transport Header
            name: Request Transport Header
          responseHeader:
            $type: HTTPNamedToolOutputProvider
            menuName: Transport Header
            name: Response Transport Header
          xmlRequestOutput:
            $type: NamedXMLToolOutputProvider
            menuName: Traffic
            name: Request Traffic
          trafficOutput:
            m_name: Traffic Stream
          objectOutput:
            $type: ObjectOutputProvider
            outputTools:
            - $type: TrafficViewer
              iconName: TrafficViewer
              name: Traffic Viewer
              showRequestHeaders: true
              showResponseHeaders: true
            name: Traffic Object
        literal:
          use: 1
          text:
            MessagingClient_LiteralMessage: ""
            type: application/json
        mode: Literal
        literalQuery:
          isPropertiesRef: true
        literalPath:
          pathElements:
          - values:
            - $type: ScriptedValue
            fixedValue:
              $type: StringTestValue
              value: accounts
          - values:
            - $type: ScriptedValue
            fixedValue:
              $type: StringTestValue
              value: 12345
        constrainedPath:
          pathParameters:
          - $type: ElementValue
            writeType: true
            hasReference: true
            qnameAsString: :accountId
            replacedColumn: ""
            values:
            - $type: IntegerValue
              replacedColumn: ""
              value: 12345
        resourceMethod:
          resourceId: "/accounts/{accountId}"
          httpMethod: GET
        resourceMode: 3
        baseUrl:
          values:
          - $type: ScriptedValue
          - $type: WadlTestValue
            value: http://qa1.parasoft.com:8090/parabank/services/bank
          fixedValue:
            $type: StringTestValue
            value: "${BASEURL}"
    - $type: RESTClientToolTest
      testLogic: true
      testFlowLogic:
        condition: true
      testID: 708
      enabled: true
      name: /billpay - POST
      performanceGroup: 6
      tool:
        $type: RESTClient
        iconName: RESTClient
        name: /billpay - POST
        outputTools:
        - $type: DiffTool
          iconName: Diff
          name: "Diff control generated on Dec 6, 2022, 4:50:47 PM."
          differs:
          - $type: BinaryDiffer
            source:
              optionsSource: 1
          - $type: TextDiffer
          - $type: XMLDifferNew
            formXml:
              formXML:
                rootNodeExists: true
                rootNode:
                  $type: XMLElementNode
                  xmlEncoding: 2
                  value: ""
                  name: NewElement
                  showAttributes: true
            hasSoapControlSource: true
            soapControlSource:
              $type: SoapDiffControlSource
          - $type: JSONDiffer
          source:
            controls:
            - keys:
              - ""
              - ""
              row:
                refs:
                - dataSourceName: ""
                last: false
            - "{\"payeeName\":\"Bob Smith\",\"amount\":10.0,\"accountId\":12345}"
          mode: 3
        formJson:
          builtFromSchema: true
          value:
            $type: ElementValue
            writeType: true
            type:
              $type: ElementType
              hash: 1
              localName: root
              bodyType:
                $type: ComplexType
                hash: 2
                attributes:
                - hash: 3
                  ns: ""
                  name: type
                  defaultValue: object
                  fixed: object
                  contentType:
                    $type: StringType
                    hash: 4
                  required: true
                name: /components/schemas/Payee
                compositor: true
                compositorObj:
                  $type: AllCompositor
                  hash: 5
                  types:
                  - $type: ElementType
                    hash: 6
                    minOccurs: 0
                    localName: name
                    bodyType:
                      $type: ComplexType
                      hash: 7
                      attributes:
                      - hash: 8
                        ns: ""
                        name: type
                        defaultValue: string
                        fixed: string
                        contentType:
                          $type: StringType
                          hash: 4
                        required: true
                      content: true
                      contentObj:
                        $type: StringType
                        hash: 9
                      namespace: urn:parasoft:json
                      name: string
                      compositor: true
                      compositorObj:
                        $type: SequenceCompositor
                        hash: 10
                  - $type: ElementType
                    hash: 11
                    minOccurs: 0
                    localName: address
                    bodyType:
                      $type: ComplexType
                      hash: 12
                      attributes:
                      - hash: 13
                        ns: ""
                        name: type
                        defaultValue: object
                        fixed: object
                        contentType:
                          $type: StringType
                          hash: 9
                        required: true
                      name: /components/schemas/Address
                      compositor: true
                      compositorObj:
                        $type: AllCompositor
                        hash: 14
                        types:
                        - $type: ElementType
                          hash: 15
                          minOccurs: 0
                          localName: street
                          bodyType:
                            $type: ComplexType
                            hash: 7
                        - $type: ElementType
                          hash: 16
                          minOccurs: 0
                          localName: city
                          bodyType:
                            $type: ComplexType
                            hash: 7
                        - $type: ElementType
                          hash: 17
                          minOccurs: 0
                          localName: state
                          bodyType:
                            $type: ComplexType
                            hash: 7
                        - $type: ElementType
                          hash: 18
                          minOccurs: 0
                          localName: zipCode
                          bodyType:
                            $type: ComplexType
                            hash: 7
                  - $type: ElementType
                    hash: 19
                    minOccurs: 0
                    localName: phoneNumber
                    bodyType:
                      $type: ComplexType
                      hash: 7
                  - $type: ElementType
                    hash: 20
                    minOccurs: 0
                    localName: accountNumber
                    bodyType:
                      $type: ComplexType
                      hash: 21
                      attributes:
                      - hash: 22
                        ns: ""
                        name: type
                        defaultValue: number
                        fixed: number
                        contentType:
                          $type: StringType
                          hash: 4
                        required: true
                      content: true
                      contentObj:
                        $type: IntegerType
                        hash: 23
                      namespace: urn:parasoft:json
                      name: number
                      compositor: true
                      compositorObj:
                        $type: SequenceCompositor
                        hash: 24
            replacedColumn: ""
            values:
            - $type: ComplexValue
              replacedColumn: ""
              attributes:
              - replacedColumn: ""
                value:
                  $type: StringValue
                  replacedColumn: ""
                  value: object
                useValue: true
              compositorValue: true
              compositorValueObj:
                replacedColumn: ""
                values:
                  $type: CompositorValueSetCollectionSet
                  set:
                  - $type: CompositorValueSet
                    values:
                    - $type: ElementValue
                      replacedColumn: ""
                      values:
                      - $type: ComplexValue
                        replacedColumn: ""
                        allowArrayExclude: true
                        attributes:
                        - replacedColumn: ""
                          value:
                            $type: StringValue
                            replacedColumn: ""
                            value: string
                          useValue: true
                        contentValue: true
                        contentValueObj:
                          $type: StringValue
                          replacedColumn: ""
                          value: Bob Smith
                        compositorValue: true
                        compositorValueObj:
                          replacedColumn: ""
                          values:
                            $type: CompositorValueSetCollectionSet
                            set:
                            - $type: CompositorValueSet
                    - $type: ElementValue
                      replacedColumn: ""
                      values:
                      - $type: ComplexValue
                        replacedColumn: ""
                        allowArrayExclude: true
                        attributes:
                        - replacedColumn: ""
                          value:
                            $type: StringValue
                            replacedColumn: ""
                            value: object
                          useValue: true
                        compositorValue: true
                        compositorValueObj:
                          replacedColumn: ""
                          values:
                            $type: CompositorValueSetCollectionSet
                            set:
                            - $type: CompositorValueSet
                              values:
                              - $type: ElementValue
                                replacedColumn: ""
                                values:
                                - $type: ComplexValue
                                  replacedColumn: ""
                                  allowArrayExclude: true
                                  attributes:
                                  - replacedColumn: ""
                                    value:
                                      $type: StringValue
                                      replacedColumn: ""
                                      value: string
                                    useValue: true
                                  contentValue: true
                                  contentValueObj:
                                    $type: StringValue
                                    replacedColumn: ""
                                    value: 101 E. Huntington Drive
                                  compositorValue: true
                                  compositorValueObj:
                                    replacedColumn: ""
                                    values:
                                      $type: CompositorValueSetCollectionSet
                                      set:
                                      - $type: CompositorValueSet
                              - $type: ElementValue
                                replacedColumn: ""
                                values:
                                - $type: ComplexValue
                                  replacedColumn: ""
                                  allowArrayExclude: true
                                  attributes:
                                  - replacedColumn: ""
                                    value:
                                      $type: StringValue
                                      replacedColumn: ""
                                      value: string
                                    useValue: true
                                  contentValue: true
                                  contentValueObj:
                                    $type: StringValue
                                    replacedColumn: ""
                                    value: Monrovia
                                  compositorValue: true
                                  compositorValueObj:
                                    replacedColumn: ""
                                    values:
                                      $type: CompositorValueSetCollectionSet
                                      set:
                                      - $type: CompositorValueSet
                              - $type: ElementValue
                                replacedColumn: ""
                                values:
                                - $type: ComplexValue
                                  replacedColumn: ""
                                  allowArrayExclude: true
                                  attributes:
                                  - replacedColumn: ""
                                    value:
                                      $type: StringValue
                                      replacedColumn: ""
                                      value: string
                                    useValue: true
                                  contentValue: true
                                  contentValueObj:
                                    $type: StringValue
                                    replacedColumn: ""
                                    value: California
                                  compositorValue: true
                                  compositorValueObj:
                                    replacedColumn: ""
                                    values:
                                      $type: CompositorValueSetCollectionSet
                                      set:
                                      - $type: CompositorValueSet
                              - $type: ElementValue
                                replacedColumn: ""
                                values:
                                - $type: ComplexValue
                                  replacedColumn: ""
                                  allowArrayExclude: true
                                  attributes:
                                  - replacedColumn: ""
                                    value:
                                      $type: StringValue
                                      replacedColumn: ""
                                      value: string
                                    useValue: true
                                  contentValue: true
                                  contentValueObj:
                                    $type: StringValue
                                    replacedColumn: ""
                                    value: 91016
                                  compositorValue: true
                                  compositorValueObj:
                                    replacedColumn: ""
                                    values:
                                      $type: CompositorValueSetCollectionSet
                                      set:
                                      - $type: CompositorValueSet
                    - $type: ElementValue
                      replacedColumn: ""
                      values:
                      - $type: ComplexValue
                        replacedColumn: ""
                        allowArrayExclude: true
                        attributes:
                        - replacedColumn: ""
                          value:
                            $type: StringValue
                            replacedColumn: ""
                            value: string
                          useValue: true
                        contentValue: true
                        contentValueObj:
                          $type: StringValue
                          replacedColumn: ""
                          value: 123-456-7899
                        compositorValue: true
                        compositorValueObj:
                          replacedColumn: ""
                          values:
                            $type: CompositorValueSetCollectionSet
                            set:
                            - $type: CompositorValueSet
                    - $type: ElementValue
                      replacedColumn: ""
                      values:
                      - $type: ComplexValue
                        replacedColumn: ""
                        allowArrayExclude: true
                        attributes:
                        - replacedColumn: ""
                          value:
                            $type: StringValue
                            replacedColumn: ""
                            value: number
                          useValue: true
                        contentValue: true
                        contentValueObj:
                          $type: IntegerValue
                          replacedColumn: ""
                          value: 54321
                        compositorValue: true
                        compositorValueObj:
                          replacedColumn: ""
                          values:
                            $type: CompositorValueSetCollectionSet
                            set:
                            - $type: CompositorValueSet
          elementTypeName: root
        hasServiceInfo: true
        serviceInfo:
          serviceDescriptor:
            $type: StandardServiceDescriptor
            location: http://qa1.parasoft.com:8090/parabank/services/bank/swagger.yaml
          serviceName: ""
          versionName: ""
        jsonBuilder:
          hasValue: true
          value:
            $type: JSONObjectValue
            nameIsNull: true
        schemaURL:
          MessagingClient_SchemaLocation: "${SWAGGER}"
        formInput:
          value:
            $type: ElementValue
            writeType: true
            hasReference: true
            qnameAsString: ":"
            replacedColumn: ""
            values:
            - $type: ComplexValue
              replacedColumn: ""
              compositorValue: true
              compositorValueObj:
                replacedColumn: ""
                values:
                  $type: CompositorValueSetCollectionSet
                  set:
                  - $type: CompositorValueSet
        jmsMessageOutputProvider:
          $type: JMSMessageOutputProvider
          jmsOutputProviderRequest:
            $type: JMSOutputProvider
            name: Request Object
            menuName: Object
          jmsOutputProviderResponse:
            $type: JMSOutputProvider
            name: Response Message Object
            menuName: Message Object
        validResponseRange:
          validResponseRange:
            values:
            - $type: ScriptedValue
            fixedValue:
              $type: StringTestValue
              validResponseRange: 200
        router:
          values:
          - $type: ScriptedValue
          fixedValue:
            $type: StringTestValue
            HTTPClient_Endpoint: "${BASEURL}/billpay?accountId=0&amount=0.0"
        urlParameters:
          properties:
          - name: accountId
            value:
              values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                value: 0
          - name: amount
            value:
              values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                value: 0.0
        transportProperties:
          manager:
            protocol: 1
            properties:
            - $type: HTTPClientHTTPProperties
              followRedirects:
                bool: true
              common:
                auth:
                  useDefault: false
                  customType: 1
                method:
                  values:
                  - $type: ScriptedValue
                  fixedValue:
                    $type: HTTPMethodTestValue
                    method: POST
                httpHeaders:
                  properties:
                  - name: Accept
                    value:
                      values:
                      - $type: ScriptedValue
                      fixedValue:
                        $type: StringTestValue
                        value: application/json
              protocol: 1
              keepAlive1_1:
                bool: true
            - $type: HTTPClientHTTPProperties
              followRedirects:
                bool: true
              common:
                auth:
                  useDefault: false
                  customType: 1
                method:
                  values:
                  - $type: ScriptedValue
                  fixedValue:
                    $type: HTTPMethodTestValue
                    method: POST
                httpHeaders:
                  properties:
                  - name: Accept
                    value:
                      values:
                      - $type: ScriptedValue
                      fixedValue:
                        $type: StringTestValue
                        value: application/json
              keepAlive1_1:
                bool: true
            - $type: NoneTransportProperties
          messageExchangePattern:
            inverted: true
        outputProviders:
          requestHeader:
            $type: HTTPNamedToolOutputProvider
            menuName: Transport Header
            name: Request Transport Header
          responseHeader:
            $type: HTTPNamedToolOutputProvider
            menuName: Transport Header
            name: Response Transport Header
          xmlRequestOutput:
            $type: NamedXMLToolOutputProvider
            menuName: Traffic
            name: Request Traffic
          trafficOutput:
            m_name: Traffic Stream
          objectOutput:
            $type: ObjectOutputProvider
            outputTools:
            - $type: TrafficViewer
              iconName: TrafficViewer
              name: Traffic Viewer
            name: Traffic Object
        literal:
          use: 1
          text:
            MessagingClient_LiteralMessage: |-
              {
                  "name" : "Bob Smith",
                  "address" : {
                      "street" : "101 E. Huntington Drive",
                      "city" : "Monrovia",
                      "state" : "California",
                      "zipCode" : "91016"
                  },
                  "phoneNumber" : "123-456-7899",
                  "accountNumber" : 54321
              }
            type: application/json
          dataSource:
            columnName: "BasicTest: Test 1: balance"
        mode: Form JSON
        literalQuery:
          isPropertiesRef: true
        constrainedQuery:
          parameters:
          - $type: ElementValue
            writeType: true
            hasReference: true
            qnameAsString: :accountId
            replacedColumn: ""
            values:
            - $type: IntegerValue
              replacedColumn: ""
              value: 12345
          - $type: ElementValue
            writeType: true
            hasReference: true
            qnameAsString: :amount
            replacedColumn: ""
            values:
            - $type: DecimalValue
              replacedColumn: ""
              value: 10.0
        literalPath:
          pathElements:
          - values:
            - $type: ScriptedValue
            fixedValue:
              $type: StringTestValue
              value: billpay
        resourceMethod:
          resourceId: /billpay
          httpMethod: POST
        resourceMode: 3
        baseUrl:
          values:
          - $type: ScriptedValue
          - $type: WadlTestValue
            value: http://qa1.parasoft.com:8090/parabank/services/bank
          fixedValue:
            $type: StringTestValue
            value: "${BASEURL}"
    - $type: RESTClientToolTest
      testLogic: true
      testFlowLogic:
        condition: true
      testID: 709
      enabled: true
      name: "/accounts/{accountId} - GET 2"
      performanceGroup: 0
      tool:
        $type: RESTClient
        iconName: RESTClient
        name: "/accounts/{accountId} - GET 2"
        outputTools:
        - $type: GenericAssertionTool
          iconName: XMLAssertor
          name: JSON Assertor
          wrappedTool:
            $type: XMLAssertionTool
            iconName: XMLAssertor
            name: XML Assertor
            assertions:
            - $type: DifferenceAssertion
              timestamp: 1670374731750
              name: Balance After BillPay Assertion
              Assertion_XPath: /root/balance
              data:
                $type: NumericDifference
                values:
                - Difference Value
                - name: Difference Value
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: -10
                base:
                  name: Base Value
                  value:
                    fixedValue:
                      $type: StringTestValue
                    parameterizedValue:
                      column: "BasicTest: Test 1: balance"
                    selectedIndex: -2
            message:
              $type: ExpectedXMLMessage
              message: true
          conversionStrategy:
            dataFormatName: JSON
            conversionStrategyId: JSON
            conversionStrategyClassName: com.parasoft.xml.convert.json.JsonConversionStrategy
        formJson:
          value:
            $type: ElementValue
            writeType: true
            type:
              $type: ElementType
              hash: 1
              localName: root
              bodyType:
                $type: ComplexType
                hash: 2
                attributes:
                - hash: 3
                  ns: ""
                  name: type
                  fixed: object
                  contentType:
                    $type: StringType
                    hash: 4
                  required: true
                name: rootType
                compositor: true
                compositorObj:
                  $type: AllCompositor
                  hash: 5
            replacedColumn: ""
            values:
            - $type: ComplexValue
              replacedColumn: ""
              attributes:
              - replacedColumn: ""
                value:
                  $type: StringValue
                  replacedColumn: ""
                  value: object
                  xmlEncoding: 2
                useValue: true
              compositorValue: true
              compositorValueObj:
                replacedColumn: ""
                values:
                  $type: CompositorValueSetCollectionSet
                  set:
                  - $type: CompositorValueSet
          elementTypeName: root
        hasServiceInfo: true
        serviceInfo:
          serviceDescriptor:
            $type: StandardServiceDescriptor
            location: http://44.238.145.204:8090/parabank/services/bank/swagger.yaml
          serviceName: ""
          versionName: ""
        jsonBuilder:
          hasValue: true
          value:
            $type: JSONObjectValue
            nameIsNull: true
        schemaURL:
          MessagingClient_SchemaLocation: "${SWAGGER}"
        formInput:
          value:
            $type: ElementValue
            writeType: true
            hasReference: true
            qnameAsString: ":"
            replacedColumn: ""
            values:
            - $type: ComplexValue
              replacedColumn: ""
              compositorValue: true
              compositorValueObj:
                replacedColumn: ""
                values:
                  $type: CompositorValueSetCollectionSet
                  set:
                  - $type: CompositorValueSet
        jmsMessageOutputProvider:
          $type: JMSMessageOutputProvider
          jmsOutputProviderRequest:
            $type: JMSOutputProvider
            name: Request Object
            menuName: Object
          jmsOutputProviderResponse:
            $type: JMSOutputProvider
            name: Response Message Object
            menuName: Message Object
        validResponseRange:
          validResponseRange:
            values:
            - $type: ScriptedValue
            fixedValue:
              $type: StringTestValue
              validResponseRange: 200
        router:
          values:
          - $type: ScriptedValue
          fixedValue:
            $type: StringTestValue
            HTTPClient_Endpoint: "${BASEURL}/accounts/12345?_type=json"
        urlParameters:
          properties:
          - name: _type
            value:
              values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                value: json
        transportProperties:
          manager:
            protocol: 1
            properties:
            - $type: HTTPClientHTTPProperties
              followRedirects:
                bool: true
              common:
                auth:
                  useDefault: false
                  customType: 1
                method:
                  values:
                  - $type: ScriptedValue
                  fixedValue:
                    $type: HTTPMethodTestValue
                    method: GET
                httpHeaders:
                  properties:
                  - name: Accept
                    value:
                      values:
                      - $type: ScriptedValue
                      fixedValue:
                        $type: StringTestValue
                        value: application/json
              keepAlive1_1:
                bool: true
            - $type: HTTPClientHTTPProperties
              followRedirects:
                bool: true
              common:
                auth:
                  useDefault: false
                  customType: 1
                method:
                  values:
                  - $type: ScriptedValue
                  fixedValue:
                    $type: HTTPMethodTestValue
                    method: GET
                httpHeaders:
                  properties:
                  - name: Accept
                    value:
                      values:
                      - $type: ScriptedValue
                      fixedValue:
                        $type: StringTestValue
                        value: application/json
              protocol: 1
              keepAlive1_1:
                bool: true
            - $type: NoneTransportProperties
          messageExchangePattern:
            inverted: true
        outputProviders:
          requestHeader:
            $type: HTTPNamedToolOutputProvider
            menuName: Transport Header
            name: Request Transport Header
          responseHeader:
            $type: HTTPNamedToolOutputProvider
            menuName: Transport Header
            name: Response Transport Header
          xmlRequestOutput:
            $type: NamedXMLToolOutputProvider
            menuName: Traffic
            name: Request Traffic
          trafficOutput:
            m_name: Traffic Stream
          objectOutput:
            $type: ObjectOutputProvider
            outputTools:
            - $type: TrafficViewer
              iconName: TrafficViewer
              name: Traffic Viewer
              showRequestHeaders: true
            name: Traffic Object
        literal:
          use: 1
          text:
            MessagingClient_LiteralMessage: ""
            type: application/json
          dataSource:
            columnName: "BasicTest: Test 1: balance"
        mode: Literal
        literalQuery:
          isPropertiesRef: true
        literalPath:
          pathElements:
          - values:
            - $type: ScriptedValue
            fixedValue:
              $type: StringTestValue
              value: accounts
          - values:
            - $type: ScriptedValue
            fixedValue:
              $type: StringTestValue
              value: 12345
        constrainedPath:
          pathParameters:
          - $type: ElementValue
            writeType: true
            hasReference: true
            qnameAsString: :accountId
            replacedColumn: ""
            values:
            - $type: IntegerValue
              replacedColumn: ""
              value: 12345
        resourceMethod:
          resourceId: "/accounts/{accountId}"
          httpMethod: GET
        resourceMode: 3
        baseUrl:
          values:
          - $type: ScriptedValue
          - $type: WadlTestValue
            value: http://qa1.parasoft.com:8090/parabank/services/bank
          fixedValue:
            $type: StringTestValue
            value: "${BASEURL}"
  - $type: TestSuite
    testLogic: true
    testFlowLogic:
      condition: true
    testID: 128
    enabled: true
    name: Data Driven Tests - Stabilize With Setup
    profileMappingID: 0
    maxProfileMappingID: 1
    nextIdentifier: 170
    tests:
    - $type: TestSuite
      testLogic: true
      testFlowLogic:
        condition: true
      testID: 129
      name: Seeding / Setup
      profileMappingID: 0
      maxProfileMappingID: 1
      nextIdentifier: 1
      tests:
      - $type: ToolTest
        testLogic: true
        testID: 130
        name: DB Tool
        tool:
          $type: DbTool
          iconName: DBTool
          name: DB Tool (SQL)
          magicToken:
            fixedValue:
              $type: StringTestValue
              value: GO
          outputProviders:
            xmlRequestOutput:
              $type: NamedXMLToolOutputProvider
              name: SQL Query
            xmlResponseOutput:
              $type: NamedXMLToolOutputProvider
              name: Results as XML
            objectOutput:
              $type: ObjectOutputProvider
              outputTools:
              - $type: TrafficViewer
                iconName: TrafficViewer
                name: Traffic Viewer
                showRequestHeaders: true
                showResponseHeaders: true
              name: Traffic Object
          propertyName: Parabank HSQL DB
          failOnSQLException: true
          account:
            local:
              $type: DbConfigSettings
              password: AwAAAAA=
              uri: ""
              username: ""
              driver: ""
      - $type: RESTClientToolTest
        testLogic: true
        testID: 131
        name: /initializeDB - POST
        performanceGroup: 15
        tool:
          $type: RESTClient
          iconName: RESTClient
          name: /initializeDB - POST (HTTP)
          formJson:
            value:
              $type: ElementValue
              writeType: true
              hasReference: true
              qnameAsString: :root
              replacedColumn: ""
              values:
              - $type: ComplexValue
                replacedColumn: ""
                attributes:
                - replacedColumn: ""
                  value:
                    $type: StringValue
                    replacedColumn: ""
                    value: object
                    xmlEncoding: 2
                  useValue: true
                compositorValue: true
                compositorValueObj:
                  replacedColumn: ""
                  values:
                    $type: CompositorValueSetCollectionSet
                    set:
                    - $type: CompositorValueSet
            elementTypeName: root
          hasServiceInfo: true
          serviceInfo:
            serviceDescriptor:
              $type: StandardServiceDescriptor
              location: http://44.238.145.204:8090/parabank/services/bank/swagger.yaml
            serviceName: ""
            versionName: ""
          jsonBuilder:
            hasValue: true
            value:
              $type: JSONObjectValue
              nameIsNull: true
          schemaURL:
            MessagingClient_SchemaLocation: "${SWAGGER}"
          formInput:
            value:
              $type: ElementValue
              writeType: true
              hasReference: true
              qnameAsString: ":"
              replacedColumn: ""
              values:
              - $type: ComplexValue
                replacedColumn: ""
                compositorValue: true
                compositorValueObj:
                  replacedColumn: ""
                  values:
                    $type: CompositorValueSetCollectionSet
                    set:
                    - $type: CompositorValueSet
          jmsMessageOutputProvider:
            $type: JMSMessageOutputProvider
            jmsOutputProviderRequest:
              $type: JMSOutputProvider
              name: Request Object
              menuName: Object
            jmsOutputProviderResponse:
              $type: JMSOutputProvider
              name: Response Message Object
              menuName: Message Object
          validResponseRange:
            validResponseRange:
              values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                validResponseRange: 200-204
          router:
            values:
            - $type: ScriptedValue
            fixedValue:
              $type: StringTestValue
              HTTPClient_Endpoint: "${BASEURL}/initializeDB"
          transportProperties:
            manager:
              properties:
              - $type: HTTPClientHTTPProperties
                followRedirects:
                  bool: true
                common:
                  auth:
                    useDefault: false
                    customType: 1
                  method:
                    values:
                    - $type: ScriptedValue
                    fixedValue:
                      $type: HTTPMethodTestValue
                      method: POST
                keepAlive1_1:
                  bool: true
              - $type: HTTPClientHTTPProperties
                followRedirects:
                  bool: true
                common:
                  auth:
                    useDefault: false
                    customType: 1
                  method:
                    values:
                    - $type: ScriptedValue
                    fixedValue:
                      $type: HTTPMethodTestValue
                      method: POST
                protocol: 1
                keepAlive1_1:
                  bool: true
              - $type: NoneTransportProperties
            messageExchangePattern:
              inverted: true
          outputProviders:
            requestHeader:
              $type: HTTPNamedToolOutputProvider
              menuName: Transport Header
              name: Request Transport Header
            responseHeader:
              $type: HTTPNamedToolOutputProvider
              menuName: Transport Header
              name: Response Transport Header
            xmlRequestOutput:
              $type: NamedXMLToolOutputProvider
              menuName: Traffic
              name: Request Traffic
            trafficOutput:
              m_name: Traffic Stream
            objectOutput:
              $type: ObjectOutputProvider
              outputTools:
              - $type: TrafficViewer
                iconName: TrafficViewer
                name: Traffic Viewer
                showRequestHeaders: true
                showResponseHeaders: true
              name: Traffic Object
          literal:
            use: 1
            text:
              MessagingClient_LiteralMessage: ""
              type: application/json
            dataSource:
              columnName: "Accounts: accountBalance"
          mode: Literal
          literalQuery:
            isPropertiesRef: true
          literalPath:
            pathElements:
            - values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                value: initializeDB
          resourceMethod:
            resourceId: /initializeDB
            httpMethod: POST
          resourceMode: 3
          baseUrl:
            values:
            - $type: ScriptedValue
            - $type: WadlTestValue
              value: http://44.238.145.204:8090/parabank/services/bank
            fixedValue:
              $type: StringTestValue
              value: "${BASEURL}"
      - $type: RESTClientToolTest
        testLogic: true
        testID: 132
        name: REST Client
        tool:
          $type: RESTClient
          iconName: RESTClient
          name: Provision CTP Environment
          formJson:
            value:
              $type: ElementValue
              writeType: true
              type:
                $type: ElementType
                hash: 1
                localName: root
                bodyType:
                  $type: ComplexType
                  hash: 2
                  attributes:
                  - hash: 3
                    ns: ""
                    name: type
                    fixed: object
                    contentType:
                      $type: StringType
                      hash: 4
                    required: true
                  name: anonymous
                  compositor: true
                  compositorObj:
                    $type: AllCompositor
                    hash: 5
                    types:
                    - $type: ElementType
                      hash: 6
                      defaultValue: 0
                      minOccurs: 0
                      nillable: true
                      localName: environmentId
                      bodyType:
                        $type: ComplexType
                        hash: 7
                        attributes:
                        - hash: 8
                          ns: ""
                          name: type
                          fixed: number
                          contentType:
                            $type: StringType
                            hash: 4
                          required: true
                        isAbstract: true
                        content: true
                        contentObj:
                          $type: StringType
                          hash: 9
                        namespace: urn:parasoft:json
                        name: Number
                    - $type: ElementType
                      hash: 10
                      minOccurs: 0
                      nillable: true
                      localName: abortOnFailure
                      bodyType:
                        $type: ComplexType
                        hash: 11
                        attributes:
                        - hash: 12
                          ns: ""
                          name: type
                          fixed: boolean
                          contentType:
                            $type: StringType
                            hash: 13
                          required: true
                        isAbstract: true
                        content: true
                        contentObj:
                          $type: BooleanType
                          hash: 14
                        namespace: urn:parasoft:json
                        name: Boolean
                    - $type: ElementType
                      hash: 15
                      defaultValue: 0
                      minOccurs: 0
                      nillable: true
                      localName: instanceId
                      bodyType:
                        $type: ComplexType
                        hash: 7
              replacedColumn: ""
              values:
              - $type: ComplexValue
                replacedColumn: ""
                attributes:
                - replacedColumn: ""
                  value:
                    $type: StringValue
                    replacedColumn: ""
                    value: object
                    xmlEncoding: 2
                  useValue: true
                compositorValue: true
                compositorValueObj:
                  replacedColumn: ""
                  values:
                    $type: CompositorValueSetCollectionSet
                    set:
                    - $type: CompositorValueSet
                      values:
                      - $type: ElementValue
                        replacedColumn: ""
                        values:
                        - $type: ComplexValue
                          replacedColumn: ""
                          allowArrayExclude: true
                          attributes:
                          - replacedColumn: ""
                            value:
                              $type: StringValue
                              replacedColumn: ""
                              value: number
                              xmlEncoding: 2
                            useValue: true
                          contentValue: true
                          contentValueObj:
                            $type: StringValue
                            replacedColumn: ""
                            value: 1
                            xmlEncoding: 2
                      - $type: ElementValue
                        replacedColumn: ""
                        values:
                        - $type: ComplexValue
                          replacedColumn: ""
                          allowArrayExclude: true
                          attributes:
                          - replacedColumn: ""
                            value:
                              $type: StringValue
                              replacedColumn: ""
                              value: boolean
                              xmlEncoding: 2
                            useValue: true
                          contentValue: true
                          contentValueObj:
                            $type: BooleanValue
                            replacedColumn: ""
                            value: "false"
                      - $type: ElementValue
                        replacedColumn: ""
                        values:
                        - $type: ComplexValue
                          replacedColumn: ""
                          allowArrayExclude: true
                          attributes:
                          - replacedColumn: ""
                            value:
                              $type: StringValue
                              replacedColumn: ""
                              value: number
                              xmlEncoding: 2
                            useValue: true
                          contentValue: true
                          contentValueObj:
                            $type: StringValue
                            replacedColumn: ""
                            value: 1
                            xmlEncoding: 2
            elementTypeName: root
          jsonBuilder:
            hasValue: true
            value:
              $type: JSONObjectValue
              nameIsNull: true
          formInput:
            value:
              $type: ElementValue
              writeType: true
              hasReference: true
              qnameAsString: ":"
              replacedColumn: ""
              values:
              - $type: ComplexValue
                replacedColumn: ""
                compositorValue: true
                compositorValueObj:
                  replacedColumn: ""
                  values:
                    $type: CompositorValueSetCollectionSet
                    set:
                    - $type: CompositorValueSet
          constrainToSchema: false
          jmsMessageOutputProvider:
            $type: JMSMessageOutputProvider
            jmsOutputProviderRequest:
              $type: JMSOutputProvider
              name: Request Object
              menuName: Object
            jmsOutputProviderResponse:
              $type: JMSOutputProvider
              name: Response Message Object
              menuName: Message Object
          router:
            values:
            - $type: ScriptedValue
            fixedValue:
              $type: StringTestValue
              HTTPClient_Endpoint: "${BASE_BASE_URL}:8080/em/api/v2/provisions?async=false"
          urlParameters:
            properties:
            - name: async
              value:
                values:
                - $type: ScriptedValue
                fixedValue:
                  $type: StringTestValue
                  value: "false"
          transportProperties:
            manager:
              properties:
              - $type: HTTPClientHTTPProperties
                followRedirects:
                  bool: true
                common:
                  auth:
                    useDefault: false
                    customType: 1
                  method:
                    values:
                    - $type: ScriptedValue
                    fixedValue:
                      $type: HTTPMethodTestValue
                      method: POST
                keepAlive1_1:
                  bool: true
              - $type: HTTPClientHTTPProperties
                followRedirects:
                  bool: true
                common:
                  auth:
                    useDefault: false
                    customType: 1
                  method:
                    values:
                    - $type: ScriptedValue
                    fixedValue:
                      $type: HTTPMethodTestValue
                      method: POST
                protocol: 1
                keepAlive1_1:
                  bool: true
              - $type: NoneTransportProperties
            messageExchangePattern:
              inverted: true
          outputProviders:
            requestHeader:
              $type: HTTPNamedToolOutputProvider
              menuName: Transport Header
              name: Request Transport Header
            responseHeader:
              $type: HTTPNamedToolOutputProvider
              menuName: Transport Header
              name: Response Transport Header
            xmlRequestOutput:
              $type: NamedXMLToolOutputProvider
              menuName: Traffic
              name: Request Traffic
            trafficOutput:
              m_name: Traffic Stream
            objectOutput:
              $type: ObjectOutputProvider
              outputTools:
              - $type: TrafficViewer
                iconName: TrafficViewer
                name: Traffic Viewer
                showRequestHeaders: true
                showResponseHeaders: true
              name: Traffic Object
          literal:
            use: 1
            text:
              MessagingClient_LiteralMessage: "{\"environmentId\":1,\"abortOnFailure\"\
                :false,\"instanceId\":1}"
              type: application/json
            dataSource:
              columnName: "Accounts: accountBalance"
          mode: Form JSON
          literalQuery:
            isPropertiesRef: true
          literalPath:
            pathElements:
            - values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                value: em
            - values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                value: api
            - values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                value: v2
            - values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                value: provisions
          resourceMethod:
            httpMethod: GET
          baseUrl:
            values:
            - $type: ScriptedValue
            - $type: WadlTestValue
            fixedValue:
              $type: StringTestValue
            selectedIndex: 1
    - $type: TestSuite
      testLogic: true
      testID: 133
      enabled: true
      name: Data Driven Tests
      profileMappingID: 0
      maxProfileMappingID: 1
      nextIdentifier: 1
      dataSources:
      - id: ds_-676522220_1580406507389_1332406099
        impl:
          $type: TableDataSource
          model:
            columnIdentifiers:
            - accountIds
            - loanProviderName
            rows:
            - - 12345
              - Bob's Checking Account
            - - 12456
              - Karen's Savings Account
            - - 12567
              - Wealth Securities Dynamic Loans (WSDL)
            - - 12678
              - Wealth Securities Dynamic Loans (WSDL)
            - - 12789
              - Wealth Securities Dynamic Loans (WSDL)
            - - 13011
              - Wealth Securities Dynamic Loans (WSDL)
            - - 13122
              - Wealth Securities Dynamic Loans (WSDL)
            - - 13233
              - Wealth Securities Dynamic Loans (WSDL)
            - - 13344
              - Wealth Securities Dynamic Loans (WSDL)
            - - 54321
              - Wealth Securities Dynamic Loans (WSDL)
        name: Test Data
        useAllRows: true
        firstRow: 8
        lastRow: 8
      - id: ds_-624653765_1676044648293_1398375970
        impl:
          $type: CSVDataSource
          file: true
          fileObj:
            path: datasources\data.csv
          data: true
          columnNames:
          - accountIds
          - loanProviderName
        name: CSV Test Data
        useAllRows: true
      tests:
      - $type: RESTClientToolTest
        testLogic: true
        testFlowLogic:
          condition: true
        testID: 134
        enabled: true
        name: /requestLoan - POST
        performanceGroup: 19
        tool:
          $type: RESTClient
          dataSourceNames:
          - Test Data
          iconName: RESTClient
          name: /requestLoan - POST
          outputTools:
          - $type: GenericAssertionTool
            dataSourceNames:
            - Test Data
            iconName: XMLAssertor
            name: JSON Assertor
            wrappedTool:
              $type: XMLAssertionTool
              dataSourceNames:
              - Test Data
              iconName: XMLAssertor
              name: XML Assertor
              assertions:
              - $type: ValueAssertion
                timestamp: 1580406673970
                name: Check Approved
                extractEntireElement: true
                Assertion_XPath: /root/approved/string()
                value:
                  name: Value
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: "true"
                    parameterizedValue:
                      column: loanProviderName
              - $type: ValueAssertion
                timestamp: 1598909467662
                name: Value Assertion
                extractEntireElement: true
                Assertion_XPath: /root/loanProviderName/string()
                value:
                  name: Value
                  value:
                    fixedValue:
                      $type: StringTestValue
                    parameterizedValue:
                      column: loanProviderName
                    selectedIndex: -2
              message:
                $type: ExpectedXMLMessage
                saveExpectedMessage: true
                message: true
                messageObj:
                  content: PD94bWwgdmVyc2lvbj0iMS4xIiBlbmNvZGluZz0iVVRGLTgiPz48cm9vdCB0eXBlPSJvYmplY3QiPjxyZXNwb25zZURhdGU+MjAyMy0wNy0yN1QwMToxMTo1NC45MTZaPC9yZXNwb25zZURhdGU+PGxvYW5Qcm92aWRlck5hbWU+V2VhbHRoIFNlY3VyaXRpZXMgRHluYW1pYyBMb2FucyAoV1NETCk8L2xvYW5Qcm92aWRlck5hbWU+PGFwcHJvdmVkIHR5cGU9ImJvb2xlYW4iPnRydWU8L2FwcHJvdmVkPjxhY2NvdW50SWQgdHlwZT0ibnVtYmVyIj4xNDU2NTwvYWNjb3VudElkPjwvcm9vdD4=
                  editable: true
                  headersAvailable: false
                  mimeType: true
                  mimeTypeObj:
                    extensions:
                    - xml
                    isXML: true
                    isText: true
                    type: text/xml
            conversionStrategy:
              dataFormatName: JSON
              conversionStrategyId: JSON
              conversionStrategyClassName: com.parasoft.xml.convert.json.JsonConversionStrategy
          formJson:
            value:
              $type: ElementValue
              writeType: true
              type:
                $type: ElementType
                hash: 1
                localName: root
                bodyType:
                  $type: ComplexType
                  hash: 2
                  attributes:
                  - hash: 3
                    ns: ""
                    name: type
                    fixed: object
                    contentType:
                      $type: StringType
                      hash: 4
                    required: true
                  name: anonymous
                  compositor: true
                  compositorObj:
                    $type: AllCompositor
                    hash: 5
                    types:
                    - $type: ElementType
                      hash: 6
                      minOccurs: 0
                      nillable: true
                      localName: NewElement
                      bodyType:
                        $type: ComplexType
                        hash: 7
                        attributes:
                        - hash: 8
                          ns: ""
                          name: type
                          fixed: string
                          contentType:
                            $type: StringType
                            hash: 4
                        isAbstract: true
                        content: true
                        contentObj:
                          $type: StringType
                          hash: 9
                        namespace: urn:parasoft:json
                        name: String
              replacedColumn: ""
              values:
              - $type: ComplexValue
                replacedColumn: ""
                attributes:
                - replacedColumn: ""
                  value:
                    $type: StringValue
                    replacedColumn: ""
                    value: object
                    xmlEncoding: 2
                  useValue: true
                compositorValue: true
                compositorValueObj:
                  replacedColumn: ""
                  values:
                    $type: CompositorValueSetCollectionSet
                    set:
                    - $type: CompositorValueSet
                      values:
                      - $type: ElementValue
                        replacedColumn: ""
                        values:
                        - $type: ComplexValue
                          replacedColumn: ""
                          allowArrayExclude: true
                          attributes:
                          - replacedColumn: ""
                            value:
                              $type: StringValue
                              replacedColumn: ""
                              value: string
                              xmlEncoding: 2
                          contentValue: true
                          contentValueObj:
                            $type: StringValue
                            replacedColumn: ""
                            mode: 3
                            columnName: accountIds
                            value: ""
                            xmlEncoding: 2
            elementTypeName: root
          hasServiceInfo: true
          serviceInfo:
            serviceDescriptor:
              $type: StandardServiceDescriptor
              location: http://18.237.146.177:8090/parabank/services/bank/openapi.yaml
          jsonBuilder:
            hasValue: true
            value:
              $type: JSONObjectValue
              nameIsNull: true
          schemaURL:
            MessagingClient_SchemaLocation: "${SWAGGER}"
          formInput:
            value:
              $type: ElementValue
              writeType: true
              hasReference: true
              qnameAsString: ":"
              replacedColumn: ""
              values:
              - $type: ComplexValue
                replacedColumn: ""
                compositorValue: true
                compositorValueObj:
                  replacedColumn: ""
                  values:
                    $type: CompositorValueSetCollectionSet
                    set:
                    - $type: CompositorValueSet
          jmsMessageOutputProvider:
            $type: JMSMessageOutputProvider
            jmsOutputProviderRequest:
              $type: JMSOutputProvider
              name: Request Object
              menuName: Object
            jmsOutputProviderResponse:
              $type: JMSOutputProvider
              name: Response Message Object
              menuName: Message Object
          validResponseRange:
            validResponseRange:
              values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                validResponseRange: 200
          router:
            values:
            - $type: ScriptedValue
            fixedValue:
              $type: StringTestValue
              HTTPClient_Endpoint: "${BASEURL}/requestLoan?customerId=12212&amount=1000&downPayment=100&fromAccountId=${accountIds}&_type=json"
          urlParameters:
            properties:
            - name: customerId
              value:
                values:
                - $type: ScriptedValue
                fixedValue:
                  $type: StringTestValue
                  value: 12212
            - name: amount
              value:
                values:
                - $type: ScriptedValue
                fixedValue:
                  $type: StringTestValue
                  value: 1000
            - name: downPayment
              value:
                values:
                - $type: ScriptedValue
                fixedValue:
                  $type: StringTestValue
                  value: 100
            - name: fromAccountId
              value:
                values:
                - $type: ScriptedValue
                fixedValue:
                  $type: StringTestValue
                  value: 12345
                parameterizedValue:
                  column: accountIds
                selectedIndex: -2
            - name: _type
              value:
                values:
                - $type: ScriptedValue
                fixedValue:
                  $type: StringTestValue
                  value: json
          transportProperties:
            manager:
              properties:
              - $type: HTTPClientHTTPProperties
                followRedirects:
                  bool: true
                common:
                  auth:
                    useDefault: false
                    customType: 1
                  method:
                    values:
                    - $type: ScriptedValue
                    fixedValue:
                      $type: HTTPMethodTestValue
                      method: POST
                  httpHeaders:
                    properties:
                    - name: Accept
                      value:
                        values:
                        - $type: ScriptedValue
                        fixedValue:
                          $type: StringTestValue
                          value: application/json
                keepAlive1_1:
                  bool: true
              - $type: HTTPClientHTTPProperties
                followRedirects:
                  bool: true
                common:
                  auth:
                    useDefault: false
                    customType: 1
                  method:
                    values:
                    - $type: ScriptedValue
                    fixedValue:
                      $type: HTTPMethodTestValue
                      method: POST
                  httpHeaders:
                    properties:
                    - name: Accept
                      value:
                        values:
                        - $type: ScriptedValue
                        fixedValue:
                          $type: StringTestValue
                          value: application/json
                protocol: 1
                keepAlive1_1:
                  bool: true
              - $type: NoneTransportProperties
            messageExchangePattern:
              inverted: true
          outputProviders:
            requestHeader:
              $type: HTTPNamedToolOutputProvider
              menuName: Transport Header
              name: Request Transport Header
            responseHeader:
              $type: HTTPNamedToolOutputProvider
              menuName: Transport Header
              name: Response Transport Header
            xmlRequestOutput:
              $type: NamedXMLToolOutputProvider
              menuName: Traffic
              name: Request Traffic
            trafficOutput:
              m_name: Traffic Stream
            objectOutput:
              $type: ObjectOutputProvider
              outputTools:
              - $type: TrafficViewer
                iconName: TrafficViewer
                name: Traffic Viewer
                showRequestHeaders: true
                showResponseHeaders: true
              name: Traffic Object
          literal:
            use: 1
            text:
              MessagingClient_LiteralMessage: ""
              type: application/json
            dataSource:
              columnName: "BasicTest: Test 1: balance"
          mode: Literal
          literalQuery:
            isPropertiesRef: true
          constrainedQuery:
            parameters:
            - $type: ElementValue
              writeType: true
              hasReference: true
              qnameAsString: :customerId
              replacedColumn: ""
              values:
              - $type: IntegerValue
                replacedColumn: ""
                value: 12212
            - $type: ElementValue
              writeType: true
              hasReference: true
              qnameAsString: :amount
              replacedColumn: ""
              values:
              - $type: DecimalValue
                replacedColumn: ""
                value: 100.0
            - $type: ElementValue
              writeType: true
              hasReference: true
              qnameAsString: :downPayment
              replacedColumn: ""
              values:
              - $type: DecimalValue
                replacedColumn: ""
                value: 5.0
            - $type: ElementValue
              writeType: true
              hasReference: true
              qnameAsString: :fromAccountId
              replacedColumn: ""
              values:
              - $type: IntegerValue
                replacedColumn: ""
                mode: 3
                columnName: accountIds
                value: 0
          literalPath:
            pathElements:
            - values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                value: requestLoan
          resourceMethod:
            resourceId: /requestLoan
            httpMethod: POST
          resourceMode: 3
          baseUrl:
            values:
            - $type: ScriptedValue
            - $type: WadlTestValue
              value: http://18.237.146.177:8090/parabank/services/bank
            fixedValue:
              $type: StringTestValue
            selectedIndex: 1
    - $type: TestSuite
      testLogic: true
      testID: 169
      enabled: true
      name: Dynamic Data Generation
      profileMappingID: 0
      maxProfileMappingID: 1
      nextIdentifier: 1
      tests:
      - $type: ToolTest
        testLogic: true
        testID: 170
        enabled: true
        name: Data Generator Tool
        tool:
          $type: DataGeneratorTool
          iconName: DataGeneratorTool
          name: Data Generator Tool
          generators:
          - $type: DateTimeGenerator
            inputFormat:
              values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                inputFormat: yyyy-MM-dd hh:mm:ss a
            outputFormat:
              values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                outputFormat: yyyy-MM-dd'T'hh:mm:sss'Z'
            name: Today's Date
          - $type: DateTimeGenerator
            inputFormat:
              values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                inputFormat: yyyy-MM-dd hh:mm:ss a
            outputFormat:
              values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                outputFormat: yyyy-MM-dd hh:mm:ss a
            offsetDays:
              values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                offsetDays: -1
            name: Yesterday's Date
          - $type: StringGenerator
            name: SSN
            pattern:
              values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                pattern: "###-##-####"
          - $type: NumberGenerator
            min:
              values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                min: 0
            max:
              values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                max: 10
            name: Random Number 1-10
          virtualDSCreator:
            writableColumns:
            - dataSourceNames:
              - "Accounts: accountBalance"
              customName: TodayDate
            - dataSourceNames:
              - "Accounts: accountBalance"
              customName: YesterdayDate
            - dataSourceNames:
              - "Accounts: accountBalance"
              customName: SSN
            - dataSourceNames:
              - "Accounts: accountBalance"
              customName: RandomNumber
      - $type: HTTPClientToolTest
        testLogic: true
        testID: 644
        enabled: true
        name: Messaging Client
        tool:
          $type: HTTPClient
          iconName: HTTPClient
          name: Messaging Client
          formJson:
            value:
              $type: ElementValue
              writeType: true
              type:
                $type: ElementType
                hash: 1
                localName: root
                bodyType:
                  $type: ComplexType
                  hash: 2
                  attributes:
                  - hash: 3
                    ns: ""
                    name: type
                    fixed: object
                    contentType:
                      $type: StringType
                      hash: 4
                    required: true
                  name: anonymous
                  compositor: true
                  compositorObj:
                    $type: AllCompositor
                    hash: 5
                    types:
                    - $type: ElementType
                      hash: 6
                      minOccurs: 0
                      nillable: true
                      localName: todayDate
                      bodyType:
                        $type: ComplexType
                        hash: 7
                        attributes:
                        - hash: 8
                          ns: ""
                          name: type
                          fixed: string
                          contentType:
                            $type: StringType
                            hash: 9
                        isAbstract: true
                        content: true
                        contentObj:
                          $type: StringType
                          hash: 4
                        namespace: urn:parasoft:json
                        name: String
                    - $type: ElementType
                      hash: 10
                      minOccurs: 0
                      nillable: true
                      localName: yesterdayDate
                      bodyType:
                        $type: ComplexType
                        hash: 7
                    - $type: ElementType
                      hash: 11
                      minOccurs: 0
                      nillable: true
                      localName: ssn
                      bodyType:
                        $type: ComplexType
                        hash: 7
                    - $type: ElementType
                      hash: 12
                      defaultValue: 0
                      minOccurs: 0
                      nillable: true
                      localName: randomNumber
                      bodyType:
                        $type: ComplexType
                        hash: 13
                        attributes:
                        - hash: 14
                          ns: ""
                          name: type
                          fixed: number
                          contentType:
                            $type: StringType
                            hash: 4
                          required: true
                        isAbstract: true
                        content: true
                        contentObj:
                          $type: StringType
                          hash: 15
                        namespace: urn:parasoft:json
                        name: Number
              replacedColumn: ""
              values:
              - $type: ComplexValue
                replacedColumn: ""
                attributes:
                - replacedColumn: ""
                  value:
                    $type: StringValue
                    replacedColumn: ""
                    value: object
                  useValue: true
                compositorValue: true
                compositorValueObj:
                  replacedColumn: ""
                  values:
                    $type: CompositorValueSetCollectionSet
                    set:
                    - $type: CompositorValueSet
                      values:
                      - $type: ElementValue
                        replacedColumn: ""
                        values:
                        - $type: ComplexValue
                          replacedColumn: ""
                          allowArrayExclude: true
                          attributes:
                          - replacedColumn: ""
                            value:
                              $type: StringValue
                              replacedColumn: ""
                              value: string
                          contentValue: true
                          contentValueObj:
                            $type: StringValue
                            replacedColumn: ""
                            mode: 3
                            columnName: TodayDate
                            value: 2023-07-26T11:12:000Z
                      - $type: ElementValue
                        replacedColumn: ""
                        values:
                        - $type: ComplexValue
                          replacedColumn: ""
                          allowArrayExclude: true
                          attributes:
                          - replacedColumn: ""
                            value:
                              $type: StringValue
                              replacedColumn: ""
                              value: string
                          contentValue: true
                          contentValueObj:
                            $type: StringValue
                            replacedColumn: ""
                            mode: 3
                            columnName: YesterdayDate
                            value: 2023-07-25 11:12:00 AM
                      - $type: ElementValue
                        replacedColumn: ""
                        values:
                        - $type: ComplexValue
                          replacedColumn: ""
                          allowArrayExclude: true
                          attributes:
                          - replacedColumn: ""
                            value:
                              $type: StringValue
                              replacedColumn: ""
                              value: string
                          contentValue: true
                          contentValueObj:
                            $type: StringValue
                            replacedColumn: ""
                            mode: 3
                            columnName: SSN
                            value: 917-52-3114
                      - $type: ElementValue
                        replacedColumn: ""
                        values:
                        - $type: ComplexValue
                          replacedColumn: ""
                          allowArrayExclude: true
                          attributes:
                          - replacedColumn: ""
                            value:
                              $type: StringValue
                              replacedColumn: ""
                              value: number
                            useValue: true
                          contentValue: true
                          contentValueObj:
                            $type: StringValue
                            replacedColumn: ""
                            mode: 3
                            columnName: RandomNumber
                            value: 4
            elementTypeName: root
          hasServiceInfo: true
          serviceInfo:
            serviceDescriptor:
              $type: StandardServiceDescriptor
              location: ""
            serviceName: ""
            versionName: ""
          jsonBuilder:
            hasValue: true
            value:
              $type: JSONObjectValue
              nameIsNull: true
          formInput:
            value:
              $type: ElementValue
              writeType: true
              hasReference: true
              qnameAsString: ":"
              replacedColumn: ""
              values:
              - $type: ComplexValue
                replacedColumn: ""
                compositorValue: true
                compositorValueObj:
                  replacedColumn: ""
                  values:
                    $type: CompositorValueSetCollectionSet
                    set:
                    - $type: CompositorValueSet
          jmsMessageOutputProvider:
            $type: JMSMessageOutputProvider
            jmsOutputProviderRequest:
              $type: JMSOutputProvider
              name: Request Object
              menuName: Object
            jmsOutputProviderResponse:
              $type: JMSOutputProvider
              name: Response Message Object
              menuName: Message Object
          transportProperties:
            manager:
              protocol: 10
              properties:
              - $type: HTTPClientHTTPProperties
                followRedirects:
                  bool: true
                common:
                  auth:
                    useDefault: false
                    customType: 1
                  method:
                    values:
                    - $type: ScriptedValue
                    fixedValue:
                      $type: HTTPMethodTestValue
                      method: POST
                keepAlive1_1:
                  bool: true
              - $type: HTTPClientHTTPProperties
                followRedirects:
                  bool: true
                common:
                  auth:
                    useDefault: false
                    customType: 1
                  method:
                    values:
                    - $type: ScriptedValue
                    fixedValue:
                      $type: HTTPMethodTestValue
                      method: POST
                protocol: 1
                keepAlive1_1:
                  bool: true
              - $type: JNDIProperties
                msgExpiration:
                  $type: JMSMessageExpiration
                bytesMessageReadMethod:
                  string: readUTF()
                responseCorrelation:
                  correlationId:
                    name: JMSCorrelationID
                    value:
                      values:
                      - $type: ScriptedValue
                      fixedValue:
                        $type: StringTestValue
                  messageSelector: ""
                queueProperties:
                  jmsDestination:
                    name: JMSDestination
                    value:
                      values:
                      - $type: ScriptedValue
                      fixedValue:
                        $type: StringTestValue
                        value: JMS_RequestQueue
                  jmsReplyTo:
                    name: JMSReplyTo
                    value:
                      values:
                      - $type: ScriptedValue
                      fixedValue:
                        $type: StringTestValue
                        value: JMS_ResponseQueue
                msgType:
                  string: javax.jms.TextMessage
                useP2P:
                  bool: true
                connProperties:
                  jmsFactory:
                    name: Connection Factory
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: MQ_JMS_MANAGER
                  jndiFactory:
                    name: Initial Context
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: com.sun.jndi.fscontext.RefFSContextFactory
                  providerURL:
                    name: Provider URL
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: file:/C:/JNDI-Directory
                  auth:
                    service:
                      name: Service
                      value:
                        fixedValue:
                          $type: StringTestValue
                    username:
                      name: Username
                      value:
                        fixedValue:
                          $type: StringTestValue
                    password:
                      name: Password
                      value:
                        fixedValue:
                          $type: PasswordTestValue
                useSync: true
              - $type: SonicMQJNDIProperties
                msgExpiration:
                  $type: JMSMessageExpiration
                bytesMessageReadMethod:
                  string: readUTF()
                responseCorrelation:
                  correlationId:
                    name: JMSCorrelationID
                    value:
                      values:
                      - $type: ScriptedValue
                      fixedValue:
                        $type: StringTestValue
                  messageSelector: ""
                queueProperties:
                  jmsDestination:
                    name: JMSDestination
                    value:
                      values:
                      - $type: ScriptedValue
                      fixedValue:
                        $type: StringTestValue
                        value: JMS_RequestQueue
                  jmsReplyTo:
                    name: JMSReplyTo
                    value:
                      values:
                      - $type: ScriptedValue
                      fixedValue:
                        $type: StringTestValue
                        value: JMS_ResponseQueue
                msgType:
                  string: progress.message.jclient.MultipartMessage
                useP2P:
                  bool: true
                connProperties:
                  initialContextProps:
                  - name: java.naming.security.credentials
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: Administrator
                  - name: java.naming.security.principal
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: Administrator
                  jmsFactory:
                    name: Connection Factory
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: ConnectionFactory
                  jndiFactory:
                    name: Initial Context
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: com.sonicsw.jndi.mfcontext.MFContextFactory
                  providerURL:
                    name: Provider URL
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "tcp://[hostname]:2506"
                  auth:
                    service:
                      name: Service
                      value:
                        fixedValue:
                          $type: StringTestValue
                    username:
                      name: Username
                      value:
                        fixedValue:
                          $type: StringTestValue
                          value: Administrator
                    password:
                      name: Password
                      value:
                        fixedValue:
                          $type: PasswordTestValue
                useSync: true
                partContentID:
                  string: part1
              - $type: MQProperties
                mqrfh2fields:
                  version:
                    name: Version
                    value:
                      fixedValue:
                        $type: StringTestValue
                  encoding:
                    name: Encoding
                    value:
                      fixedValue:
                        $type: StringTestValue
                  codedCharSetId:
                    name: CodedCharSetId
                    value:
                      fixedValue:
                        $type: StringTestValue
                  format:
                    name: Format
                    value:
                      fixedValue:
                        $type: StringTestValue
                  flags:
                    name: Flags
                    value:
                      fixedValue:
                        $type: StringTestValue
                  nameValueCodedCharSetId:
                    name: NameValueCodedCharSetId
                    value:
                      fixedValue:
                        $type: StringTestValue
                mcd:
                  msd:
                    name: Message Service Domain
                    value:
                      fixedValue:
                        $type: StringTestValue
                  set:
                    name: Message Set
                    value:
                      fixedValue:
                        $type: StringTestValue
                  type:
                    name: Message Type
                    value:
                      fixedValue:
                        $type: StringTestValue
                  fmt:
                    name: Output Format
                    value:
                      fixedValue:
                        $type: StringTestValue
                psc:
                  subIdentity:
                    name: SubIdentity
                    value:
                      fixedValue:
                        $type: StringTestValue
                  qName:
                    name: QName
                    value:
                      fixedValue:
                        $type: StringTestValue
                  qMgrName:
                    name: QMgrName
                    value:
                      fixedValue:
                        $type: StringTestValue
                  subPoint:
                    name: SubPoint
                    value:
                      fixedValue:
                        $type: StringTestValue
                  filter:
                    name: Filter
                    value:
                      fixedValue:
                        $type: StringTestValue
                  subName:
                    name: SubName
                    value:
                      fixedValue:
                        $type: StringTestValue
                  subUserData:
                    name: SubUserData
                    value:
                      fixedValue:
                        $type: StringTestValue
                jms:
                  destination:
                    name: Destination
                    value:
                      fixedValue:
                        $type: StringTestValue
                  replyTo:
                    name: Reply To
                    value:
                      fixedValue:
                        $type: StringTestValue
                  timestamp:
                    name: Timestamp
                    value:
                      fixedValue:
                        $type: StringTestValue
                  expiration:
                    name: Expiration
                    value:
                      fixedValue:
                        $type: StringTestValue
                  correlationId:
                    name: Correlation Id
                    value:
                      fixedValue:
                        $type: StringTestValue
                  priority:
                    name: Priority
                    value:
                      fixedValue:
                        $type: StringTestValue
                  deliveryMode:
                    name: Delivery Mode
                    value:
                      fixedValue:
                        $type: StringTestValue
                mqQueueManager:
                  ccsid:
                    name: CCSID
                    value:
                      fixedValue:
                        $type: StringTestValue
                mqSSL:
                  peerName:
                    name: Peer Name
                    value:
                      fixedValue:
                        $type: StringTestValue
                  cipherSuite:
                    $type: EnumNameValuePair
                    name: CipherSuite
                    value:
                      fixedValue:
                        $type: StringTestValue
                conn:
                  keepAliveConnection: false
                  putManagerId:
                    name: Put Manager Id
                    value:
                      fixedValue:
                        $type: StringTestValue
                  getManagerId:
                    name: Get Manager Id
                    value:
                      fixedValue:
                        $type: StringTestValue
                  channel:
                    name: Channel
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: CHANNEL1
                  host:
                    name: Host
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: host
                  port:
                    name: Port
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: 1414
                  manager:
                    name: Queue Manager
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: queue.manager.1
                  putQueue:
                    name: Put Queue
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: PutQueue
                  getQueue:
                    name: Get Queue
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: GetQueue
                  messageID:
                    name: Message ID
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: Message ID
                  auth:
                    service:
                      name: Service
                      value:
                        fixedValue:
                          $type: StringTestValue
                    username:
                      name: Username
                      value:
                        fixedValue:
                          $type: StringTestValue
                    password:
                      name: Password
                      value:
                        fixedValue:
                          $type: PasswordTestValue
                mqpmMisc:
                  applicationIdData:
                    name: Application ID data
                    value:
                      fixedValue:
                        $type: StringTestValue
                  correlationID:
                    name: Correlation ID
                    value:
                      fixedValue:
                        $type: StringTestValue
                  expiry:
                    name: Expiry (in tenths of a second)
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: -1
                  messageSequenceNumber:
                    name: Message sequence number
                    value:
                      fixedValue:
                        $type: StringTestValue
                  replyToQueueManagerName:
                    name: Reply queue manager name
                    value:
                      fixedValue:
                        $type: StringTestValue
                  replyToQueueName:
                    name: Reply queue name
                    value:
                      fixedValue:
                        $type: StringTestValue
                  putApplicationName:
                    name: Put application name
                    value:
                      fixedValue:
                        $type: StringTestValue
                  applicationOriginData:
                    name: Originating application data
                    value:
                      fixedValue:
                        $type: StringTestValue
                  userId:
                    name: User ID
                    value:
                      fixedValue:
                        $type: StringTestValue
                mqgmMisc:
                  correlationID:
                    name: Correlation Id
                    value:
                      fixedValue:
                        $type: StringTestValue
                  waitInterval:
                    name: Wait Interval(in milliseconds)
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: -1
              - $type: RMIProperties
                hostName:
                  name: Host
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: Host
                portNumber:
                  name: Port
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: Port
                bindingName:
                  name: Binding
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: Binding
                remoteInterface:
                  name: Remote Interface
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: Remote Interface
                methodName:
                  name: Method Name
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: Method Name
              - $type: SMTPConnectionProperties
                port:
                  name: Port
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: 25
                host:
                  name: SMTP Host
                  value:
                    fixedValue:
                      $type: StringTestValue
                user:
                  name: Username
                  value:
                    fixedValue:
                      $type: StringTestValue
                pass:
                  name: Password
                  value:
                    fixedValue:
                      $type: PasswordTestValue
                      password: AwAAAAA=
                fromEmail:
                  name: From Email
                  value:
                    fixedValue:
                      $type: StringTestValue
                toEmail:
                  name: To Email
                  value:
                    fixedValue:
                      $type: StringTestValue
                subject:
                  name: Subject
                  value:
                    fixedValue:
                      $type: StringTestValue
              - $type: TIBCOProperties
                timeLimit:
                  name: Time Limit
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: 0
                service:
                  name: ""
                  value:
                    fixedValue:
                      $type: StringTestValue
                network:
                  name: ""
                  value:
                    fixedValue:
                      $type: StringTestValue
                daemon:
                  name: DAEMON
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: DAEMON
                sendSubject:
                  name: Send Subject
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: Send Subject
                replySubject:
                  name: Reply Field Name
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: Reply Field Name
                sendFieldName:
                  name: Send Field Name
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: Send Field Name
                replyFieldName:
                  name: Reply Field Name
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: Reply Field Name
              - $type: NoneTransportProperties
              - $type: CustomTransportProperties
                selected: 0
                configs:
                - $type: CustomTransportConfigurationImpl
                  ConfigClassName: com.parasoft.soavirt.transport.http.SimpleHTTPTransport
                  values:
                    customValueMap:
                    - HeaderName
                    - $type: MultiValueCustomValue
                    - HeaderValue
                    - $type: MultiValueCustomValue
                    - URL
                    - $type: MultiValueCustomValue
                  configVersion: 3
                  className: com.parasoft.soavirt.transport.http.SimpleHTTPTransport
                  name: Simple HTTP Transport
            messageExchangePattern:
              inverted: true
          outputProviders:
            requestHeader:
              $type: HTTPNamedToolOutputProvider
              menuName: Transport Header
              name: Request Transport Header
            responseHeader:
              $type: HTTPNamedToolOutputProvider
              menuName: Transport Header
              name: Response Transport Header
            xmlRequestOutput:
              $type: NamedXMLToolOutputProvider
              menuName: Traffic
              name: Request Traffic
            trafficOutput:
              m_name: Traffic Stream
            objectOutput:
              $type: ObjectOutputProvider
              outputTools:
              - $type: TrafficViewer
                iconName: TrafficViewer
                name: Traffic Viewer
                showRequestHeaders: true
                showResponseHeaders: true
              name: Traffic Object
          literal:
            use: 1
            text:
              MessagingClient_LiteralMessage: |-
                {
                    "todayDate" : "${TodayDate}",
                    "yesterdayDate" : "${YesterdayDate}",
                    "ssn" : "${SSN}",
                    "randomNumber" : ${number:RandomNumber}
                }
              type: application/json
            dataSource:
              columnName: "BasicTest: Test 1: balance"
          mode: Form JSON
  - $type: TestSuite
    testLogic: true
    testFlowLogic:
      condition: true
    testID: 279
    enabled: true
    name: API Governance - Schema Validation
    profileMappingID: 0
    maxProfileMappingID: 1
    nextIdentifier: 1
    tests:
    - $type: ToolTest
      testLogic: true
      testFlowLogic:
        condition: true
      testID: 415
      enabled: true
      name: OpenAPI/Swagger Validator
      tool:
        $type: SwaggerValidator
        iconName: SwaggerValidator
        name: OpenAPI/Swagger Validator
        definitionUrl: "${SWAGGER}"
        errorsOutput:
          name: Errors
    - $type: RESTClientToolTest
      testLogic: true
      testFlowLogic:
        condition: true
      testID: 280
      enabled: true
      name: "/accounts/{accountId} - GET"
      performanceGroup: 0
      tool:
        $type: RESTClient
        iconName: RESTClient
        name: "/accounts/{accountId} - GET"
        outputTools:
        - $type: JSONValidator
          iconName: ValidateJSON
          name: JSON Validator
          definitionLocation: true
          definitionLocationObj:
            path: swagger_hacked.yaml
          messageId: "/accounts/{accountId} - GET - 200"
        formJson:
          value:
            $type: ElementValue
            writeType: true
            type:
              $type: ElementType
              hash: 1
              localName: root
              bodyType:
                $type: ComplexType
                hash: 2
                attributes:
                - hash: 3
                  ns: ""
                  name: type
                  fixed: object
                  contentType:
                    $type: StringType
                    hash: 4
                  required: true
                name: rootType
                compositor: true
                compositorObj:
                  $type: AllCompositor
                  hash: 5
            replacedColumn: ""
            values:
            - $type: ComplexValue
              replacedColumn: ""
              attributes:
              - replacedColumn: ""
                value:
                  $type: StringValue
                  replacedColumn: ""
                  value: object
                  xmlEncoding: 2
                useValue: true
              compositorValue: true
              compositorValueObj:
                replacedColumn: ""
                values:
                  $type: CompositorValueSetCollectionSet
                  set:
                  - $type: CompositorValueSet
          elementTypeName: root
        hasServiceInfo: true
        serviceInfo:
          serviceDescriptor:
            $type: StandardServiceDescriptor
            location: file:///C:/Users/whaaker/parasoft/soavirt_workspace_main/SOAtestDemoExamples/Parabank/Bank/swagger.yaml
          serviceName: ""
          versionName: ""
        jsonBuilder:
          hasValue: true
          value:
            $type: JSONObjectValue
            nameIsNull: true
        schemaURL:
          MessagingClient_SchemaLocation: "${SWAGGER}"
        formInput:
          value:
            $type: ElementValue
            writeType: true
            hasReference: true
            qnameAsString: ":"
            replacedColumn: ""
            values:
            - $type: ComplexValue
              replacedColumn: ""
              compositorValue: true
              compositorValueObj:
                replacedColumn: ""
                values:
                  $type: CompositorValueSetCollectionSet
                  set:
                  - $type: CompositorValueSet
        jmsMessageOutputProvider:
          $type: JMSMessageOutputProvider
          jmsOutputProviderRequest:
            $type: JMSOutputProvider
            name: Request Object
            menuName: Object
          jmsOutputProviderResponse:
            $type: JMSOutputProvider
            name: Response Message Object
            menuName: Message Object
        validResponseRange:
          validResponseRange:
            values:
            - $type: ScriptedValue
            fixedValue:
              $type: StringTestValue
              validResponseRange: 200
        router:
          values:
          - $type: ScriptedValue
          fixedValue:
            $type: StringTestValue
            HTTPClient_Endpoint: "${BASEURL}/accounts/12345"
        transportProperties:
          manager:
            properties:
            - $type: HTTPClientHTTPProperties
              followRedirects:
                bool: true
              common:
                auth:
                  useDefault: false
                  customType: 1
                method:
                  values:
                  - $type: ScriptedValue
                  fixedValue:
                    $type: HTTPMethodTestValue
                    method: GET
                httpHeaders:
                  properties:
                  - name: Accept
                    value:
                      values:
                      - $type: ScriptedValue
                      fixedValue:
                        $type: StringTestValue
                        value: application/json
              keepAlive1_1:
                bool: true
            - $type: HTTPClientHTTPProperties
              followRedirects:
                bool: true
              common:
                auth:
                  useDefault: false
                  customType: 1
                method:
                  values:
                  - $type: ScriptedValue
                  fixedValue:
                    $type: HTTPMethodTestValue
                    method: GET
                httpHeaders:
                  properties:
                  - name: Accept
                    value:
                      values:
                      - $type: ScriptedValue
                      fixedValue:
                        $type: StringTestValue
                        value: application/json
              protocol: 1
              keepAlive1_1:
                bool: true
            - $type: NoneTransportProperties
          messageExchangePattern:
            inverted: true
        outputProviders:
          requestHeader:
            $type: HTTPNamedToolOutputProvider
            menuName: Transport Header
            name: Request Transport Header
          responseHeader:
            $type: HTTPNamedToolOutputProvider
            menuName: Transport Header
            name: Response Transport Header
          xmlRequestOutput:
            $type: NamedXMLToolOutputProvider
            menuName: Traffic
            name: Request Traffic
          trafficOutput:
            m_name: Traffic Stream
          objectOutput:
            $type: ObjectOutputProvider
            outputTools:
            - $type: TrafficViewer
              iconName: TrafficViewer
              name: Traffic Viewer
              showRequestHeaders: true
            name: Traffic Object
        literal:
          use: 1
          text:
            MessagingClient_LiteralMessage: ""
            type: application/json
          dataSource:
            columnName: RandomNumber
        mode: Literal
        literalQuery:
          isPropertiesRef: true
        literalPath:
          pathElements:
          - values:
            - $type: ScriptedValue
            fixedValue:
              $type: StringTestValue
              value: accounts
          - values:
            - $type: ScriptedValue
            fixedValue:
              $type: StringTestValue
              value: 12345
        constrainedPath:
          pathParameters:
          - $type: ElementValue
            writeType: true
            hasReference: true
            qnameAsString: :accountId
            replacedColumn: ""
            values:
            - $type: IntegerValue
              replacedColumn: ""
              value: 12345
        resourceMethod:
          resourceId: "/accounts/{accountId}"
          httpMethod: GET
        resourceMode: 3
        baseUrl:
          values:
          - $type: ScriptedValue
          - $type: WadlTestValue
            value: http://qa1.parasoft.com:8090/parabank/services/bank
          fixedValue:
            $type: StringTestValue
            value: "${BASEURL}"
  - $type: TestSuite
    reportingSettings:
      requirementsTracking:
        prNumbers:
        - requirementType: '@req'
          requirementID: PARWH-3
          requirementURL: ""
    testLogic: true
    testFlowLogic:
      condition: true
    testID: 752
    enabled: true
    name: Create Account (API+DB)
    profiles:
    - Create Account
    profileMappingID: 0
    maxProfileMappingID: 1
    nextIdentifier: 1
    tests:
    - $type: RESTClientToolTest
      testLogic: true
      testFlowLogic:
        condition: true
      testID: 753
      enabled: true
      name: "/customers/{customerId}/accounts - GET"
      performanceGroup: 10
      tool:
        $type: RESTClient
        iconName: RESTClient
        name: "/customers/{customerId}/accounts - GET"
        outputTools:
        - $type: GenericDataBank
          iconName: XMLDataBank
          name: JSON Data Bank
          wrappedTool:
            $type: XMLtoDataSource
            iconName: XMLDataBank
            name: XML Data Bank
            selectedXPaths:
            - elementOption: 1
              contentOption: 2
              XMLDataBank_ExtractXPath: count(/root/item)+1
              target: 1
              mode: 1
            - elementOption: 1
              contentOption: 1
              XMLDataBank_ExtractXPath: "/root/item[7]/id[1]/text()"
              mode: 1
            - elementOption: 1
              contentOption: 2
              XMLDataBank_ExtractXPath: /root
              target: 1
              mode: 1
            canonicalizeOutput: true
            xmlMessage: true
            virtualDSCreator:
              writableColumns:
              - dataSourceNames:
                - "Accounts: accountBalance"
                customName: "Test 1: accountsSize"
              - customName: "Test 1: id"
              - customName: "Test 1: root"
          conversionStrategy:
            dataFormatName: JSON
            conversionStrategyId: JSON
            conversionStrategyClassName: com.parasoft.xml.convert.json.JsonConversionStrategy
        formJson:
          value:
            $type: ElementValue
            writeType: true
            hasReference: true
            qnameAsString: :root
            replacedColumn: ""
            values:
            - $type: ComplexValue
              replacedColumn: ""
              attributes:
              - replacedColumn: ""
                value:
                  $type: StringValue
                  replacedColumn: ""
                  value: object
                  xmlEncoding: 2
                useValue: true
              compositorValue: true
              compositorValueObj:
                replacedColumn: ""
                values:
                  $type: CompositorValueSetCollectionSet
                  set:
                  - $type: CompositorValueSet
          elementTypeName: root
        hasServiceInfo: true
        serviceInfo:
          serviceDescriptor:
            $type: StandardServiceDescriptor
            location: http://192.168.56.101:8080/parabank/services/bank/swagger.yaml
          serviceName: ""
          versionName: ""
        jsonBuilder:
          hasValue: true
          value:
            $type: JSONObjectValue
            nameIsNull: true
        schemaURL:
          MessagingClient_SchemaLocation: "${SWAGGER}"
        formInput:
          value:
            $type: ElementValue
            writeType: true
            hasReference: true
            qnameAsString: ":"
            replacedColumn: ""
            values:
            - $type: ComplexValue
              replacedColumn: ""
              compositorValue: true
              compositorValueObj:
                replacedColumn: ""
                values:
                  $type: CompositorValueSetCollectionSet
                  set:
                  - $type: CompositorValueSet
        constrainToSchema: false
        jmsMessageOutputProvider:
          $type: JMSMessageOutputProvider
          jmsOutputProviderRequest:
            $type: JMSOutputProvider
            name: Request Object
            menuName: Object
          jmsOutputProviderResponse:
            $type: JMSOutputProvider
            name: Response Message Object
            menuName: Message Object
        validResponseRange:
          validResponseRange:
            values:
            - $type: ScriptedValue
            fixedValue:
              $type: StringTestValue
              validResponseRange: 200
        router:
          values:
          - $type: ScriptedValue
          fixedValue:
            $type: StringTestValue
            HTTPClient_Endpoint: "${BASEURL}/customers/12212/accounts"
        transportProperties:
          manager:
            properties:
            - $type: HTTPClientHTTPProperties
              followRedirects:
                bool: true
              common:
                auth:
                  useDefault: false
                  customType: 1
                method:
                  values:
                  - $type: ScriptedValue
                  fixedValue:
                    $type: HTTPMethodTestValue
                    method: GET
                httpHeaders:
                  properties:
                  - name: Accept
                    value:
                      values:
                      - $type: ScriptedValue
                      fixedValue:
                        $type: StringTestValue
                        value: application/json
              keepAlive1_1:
                bool: true
            - $type: HTTPClientHTTPProperties
              followRedirects:
                bool: true
              common:
                auth:
                  useDefault: false
                  customType: 1
                method:
                  values:
                  - $type: ScriptedValue
                  fixedValue:
                    $type: HTTPMethodTestValue
                    method: GET
                httpHeaders:
                  properties:
                  - name: Accept
                    value:
                      values:
                      - $type: ScriptedValue
                      fixedValue:
                        $type: StringTestValue
                        value: application/json
              protocol: 1
              keepAlive1_1:
                bool: true
            - $type: NoneTransportProperties
          messageExchangePattern:
            inverted: true
        outputProviders:
          requestHeader:
            $type: HTTPNamedToolOutputProvider
            menuName: Transport Header
            name: Request Transport Header
          responseHeader:
            $type: HTTPNamedToolOutputProvider
            menuName: Transport Header
            name: Response Transport Header
          xmlRequestOutput:
            $type: NamedXMLToolOutputProvider
            menuName: Traffic
            name: Request Traffic
          trafficOutput:
            m_name: Traffic Stream
          objectOutput:
            $type: ObjectOutputProvider
            outputTools:
            - $type: TrafficViewer
              iconName: TrafficViewer
              name: Traffic Viewer
              showRequestHeaders: true
            name: Traffic Object
        literal:
          use: 1
          text:
            MessagingClient_LiteralMessage: ""
            type: application/json
          dataSource:
            columnName: "Accounts: accountBalance"
        mode: Literal
        literalQuery:
          isPropertiesRef: true
        literalPath:
          pathElements:
          - values:
            - $type: ScriptedValue
            fixedValue:
              $type: StringTestValue
              value: customers
          - values:
            - $type: ScriptedValue
            fixedValue:
              $type: StringTestValue
              value: 12212
          - values:
            - $type: ScriptedValue
            fixedValue:
              $type: StringTestValue
              value: accounts
        constrainedPath:
          pathParameters:
          - $type: ElementValue
            writeType: true
            hasReference: true
            qnameAsString: :customerId
            replacedColumn: ""
            values:
            - $type: IntegerValue
              replacedColumn: ""
              value: 12212
        resourceMethod:
          resourceId: "/customers/{customerId}/accounts"
          httpMethod: GET
        baseUrl:
          values:
          - $type: ScriptedValue
          - $type: WadlTestValue
            value: http://demo:8080/parabank/services/bank
          fixedValue:
            $type: StringTestValue
            value: "${BASEURL}"
    - $type: RESTClientToolTest
      testLogic: true
      testFlowLogic:
        condition: true
      testID: 754
      enabled: true
      name: /createAccount - POST
      performanceGroup: 7
      tool:
        $type: RESTClient
        iconName: RESTClient
        name: /createAccount - POST
        outputTools:
        - $type: GenericDataBank
          dataSourceNames:
          - Accounts
          iconName: XMLDataBank
          name: JSON Data Bank
          wrappedTool:
            $type: XMLtoDataSource
            dataSourceNames:
            - Accounts
            iconName: XMLDataBank
            name: XML Data Bank
            selectedXPaths:
            - elementOption: 1
              contentOption: 1
              XMLDataBank_ExtractXPath: "/root/id[1]/text()"
              mode: 1
            - elementOption: 1
              contentOption: 1
              XMLDataBank_ExtractXPath: "/root/balance[1]/text()"
              mode: 1
            canonicalizeOutput: true
            xmlMessage: true
            virtualDSCreator:
              writableColumns:
              - customName: "Test 2: id"
              - customName: "Test 2: balance"
          conversionStrategy:
            dataFormatName: JSON
            conversionStrategyId: JSON
            conversionStrategyClassName: com.parasoft.xml.convert.json.JsonConversionStrategy
        formJson:
          value:
            $type: ElementValue
            writeType: true
            hasReference: true
            qnameAsString: :root
            replacedColumn: ""
            values:
            - $type: ComplexValue
              replacedColumn: ""
              attributes:
              - replacedColumn: ""
                value:
                  $type: StringValue
                  replacedColumn: ""
                  value: object
                  xmlEncoding: 2
                useValue: true
              compositorValue: true
              compositorValueObj:
                replacedColumn: ""
                values:
                  $type: CompositorValueSetCollectionSet
                  set:
                  - $type: CompositorValueSet
          elementTypeName: root
        hasServiceInfo: true
        serviceInfo:
          serviceDescriptor:
            $type: StandardServiceDescriptor
            location: http://192.168.56.101:8080/parabank/services/bank/swagger.yaml
          serviceName: ""
          versionName: ""
        jsonBuilder:
          hasValue: true
          value:
            $type: JSONObjectValue
            nameIsNull: true
        schemaURL:
          MessagingClient_SchemaLocation: "${SWAGGER}"
        formInput:
          value:
            $type: ElementValue
            writeType: true
            hasReference: true
            qnameAsString: ":"
            replacedColumn: ""
            values:
            - $type: ComplexValue
              replacedColumn: ""
              compositorValue: true
              compositorValueObj:
                replacedColumn: ""
                values:
                  $type: CompositorValueSetCollectionSet
                  set:
                  - $type: CompositorValueSet
        constrainToSchema: false
        jmsMessageOutputProvider:
          $type: JMSMessageOutputProvider
          jmsOutputProviderRequest:
            $type: JMSOutputProvider
            name: Request Object
            menuName: Object
          jmsOutputProviderResponse:
            $type: JMSOutputProvider
            name: Response Message Object
            menuName: Message Object
        validResponseRange:
          validResponseRange:
            values:
            - $type: ScriptedValue
            fixedValue:
              $type: StringTestValue
              validResponseRange: 200
        router:
          values:
          - $type: ScriptedValue
          fixedValue:
            $type: StringTestValue
            HTTPClient_Endpoint: "${BASEURL}/createAccount?customerId=12212&newAccountType=0&fromAccountId=${Test\
              \ 1: id}&_type=json"
        urlParameters:
          properties:
          - name: customerId
            value:
              values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                value: 12212
          - name: newAccountType
            value:
              values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                value: 0
          - name: fromAccountId
            value:
              values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                value: 54321
              parameterizedValue:
                column: "Test 1: id"
              selectedIndex: -2
          - name: _type
            value:
              values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                value: json
        transportProperties:
          manager:
            properties:
            - $type: HTTPClientHTTPProperties
              followRedirects:
                bool: true
              common:
                auth:
                  useDefault: false
                  customType: 1
                method:
                  values:
                  - $type: ScriptedValue
                  fixedValue:
                    $type: HTTPMethodTestValue
                    method: POST
              keepAlive1_1:
                bool: true
            - $type: HTTPClientHTTPProperties
              followRedirects:
                bool: true
              common:
                auth:
                  useDefault: false
                  customType: 1
                method:
                  values:
                  - $type: ScriptedValue
                  fixedValue:
                    $type: HTTPMethodTestValue
                    method: POST
              protocol: 1
              keepAlive1_1:
                bool: true
            - $type: NoneTransportProperties
          messageExchangePattern:
            inverted: true
        outputProviders:
          requestHeader:
            $type: HTTPNamedToolOutputProvider
            menuName: Transport Header
            name: Request Transport Header
          responseHeader:
            $type: HTTPNamedToolOutputProvider
            menuName: Transport Header
            name: Response Transport Header
          xmlRequestOutput:
            $type: NamedXMLToolOutputProvider
            menuName: Traffic
            name: Request Traffic
          trafficOutput:
            m_name: Traffic Stream
          objectOutput:
            $type: ObjectOutputProvider
            outputTools:
            - $type: TrafficViewer
              iconName: TrafficViewer
              name: Traffic Viewer
              showRequestHeaders: true
              showResponseHeaders: true
            name: Traffic Object
        literal:
          use: 1
          text:
            MessagingClient_LiteralMessage: ""
            type: application/json
          dataSource:
            columnName: "Accounts: accountBalance"
        mode: Literal
        literalQuery:
          isPropertiesRef: true
        constrainedQuery:
          parameters:
          - $type: ElementValue
            writeType: true
            hasReference: true
            qnameAsString: :customerId
            replacedColumn: ""
            values:
            - $type: IntegerValue
              replacedColumn: ""
              value: 12212
          - $type: ElementValue
            writeType: true
            hasReference: true
            qnameAsString: :newAccountType
            replacedColumn: ""
            values:
            - $type: IntegerValue
              replacedColumn: ""
              value: 0
          - $type: ElementValue
            writeType: true
            hasReference: true
            qnameAsString: :fromAccountId
            replacedColumn: ""
            values:
            - $type: IntegerValue
              replacedColumn: ""
              value: 54321
        literalPath:
          pathElements:
          - values:
            - $type: ScriptedValue
            fixedValue:
              $type: StringTestValue
              value: createAccount
        resourceMethod:
          resourceId: /createAccount
          httpMethod: POST
        baseUrl:
          values:
          - $type: ScriptedValue
          - $type: WadlTestValue
            value: http://demo:8080/parabank/services/bank
          fixedValue:
            $type: StringTestValue
            value: "${BASEURL}"
    - $type: RESTClientToolTest
      testLogic: true
      testFlowLogic:
        condition: true
      testID: 755
      enabled: true
      name: "/customers/{customerId}/accounts - GET 2"
      performanceGroup: 10
      tool:
        $type: RESTClient
        dataSourceNames:
        - Accounts
        iconName: RESTClient
        name: "/customers/{customerId}/accounts - GET 2"
        outputTools:
        - $type: GenericAssertionTool
          iconName: XMLAssertor
          name: JSON Assertor
          wrappedTool:
            $type: XMLAssertionTool
            iconName: XMLAssertor
            name: XML Assertor
            assertions:
            - $type: OccurrenceAssertion
              timestamp: 1560819084240
              name: Check One Account Added
              extractEntireElement: true
              Assertion_XPath: /root/item
              value:
                name: Count
                value:
                  fixedValue:
                    $type: StringTestValue
                  parameterizedValue:
                    column: "Test 1: accountsSize"
                  selectedIndex: -2
            message:
              $type: ExpectedXMLMessage
              message: true
          conversionStrategy:
            dataFormatName: JSON
            conversionStrategyId: JSON
            conversionStrategyClassName: com.parasoft.xml.convert.json.JsonConversionStrategy
        formJson:
          value:
            $type: ElementValue
            writeType: true
            hasReference: true
            qnameAsString: :root
            replacedColumn: ""
            values:
            - $type: ComplexValue
              replacedColumn: ""
              attributes:
              - replacedColumn: ""
                value:
                  $type: StringValue
                  replacedColumn: ""
                  value: object
                  xmlEncoding: 2
                useValue: true
              compositorValue: true
              compositorValueObj:
                replacedColumn: ""
                values:
                  $type: CompositorValueSetCollectionSet
                  set:
                  - $type: CompositorValueSet
          elementTypeName: root
        hasServiceInfo: true
        serviceInfo:
          serviceDescriptor:
            $type: StandardServiceDescriptor
            location: http://192.168.56.101:8080/parabank/services/bank/swagger.yaml
          serviceName: ""
          versionName: ""
        jsonBuilder:
          hasValue: true
          value:
            $type: JSONObjectValue
            nameIsNull: true
        schemaURL:
          MessagingClient_SchemaLocation: "${SWAGGER}"
        formInput:
          value:
            $type: ElementValue
            writeType: true
            hasReference: true
            qnameAsString: ":"
            replacedColumn: ""
            values:
            - $type: ComplexValue
              replacedColumn: ""
              compositorValue: true
              compositorValueObj:
                replacedColumn: ""
                values:
                  $type: CompositorValueSetCollectionSet
                  set:
                  - $type: CompositorValueSet
        constrainToSchema: false
        jmsMessageOutputProvider:
          $type: JMSMessageOutputProvider
          jmsOutputProviderRequest:
            $type: JMSOutputProvider
            name: Request Object
            menuName: Object
          jmsOutputProviderResponse:
            $type: JMSOutputProvider
            name: Response Message Object
            menuName: Message Object
        validResponseRange:
          validResponseRange:
            values:
            - $type: ScriptedValue
            fixedValue:
              $type: StringTestValue
              validResponseRange: 200
        router:
          values:
          - $type: ScriptedValue
          fixedValue:
            $type: StringTestValue
            HTTPClient_Endpoint: "${BASEURL}/customers/12212/accounts?_type=json"
        urlParameters:
          properties:
          - name: _type
            value:
              values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                value: json
        transportProperties:
          manager:
            properties:
            - $type: HTTPClientHTTPProperties
              followRedirects:
                bool: true
              common:
                auth:
                  useDefault: false
                  customType: 1
                method:
                  values:
                  - $type: ScriptedValue
                  fixedValue:
                    $type: HTTPMethodTestValue
                    method: GET
              keepAlive1_1:
                bool: true
            - $type: HTTPClientHTTPProperties
              followRedirects:
                bool: true
              common:
                auth:
                  useDefault: false
                  customType: 1
                method:
                  values:
                  - $type: ScriptedValue
                  fixedValue:
                    $type: HTTPMethodTestValue
                    method: GET
              protocol: 1
              keepAlive1_1:
                bool: true
            - $type: NoneTransportProperties
          messageExchangePattern:
            inverted: true
        outputProviders:
          requestHeader:
            $type: HTTPNamedToolOutputProvider
            menuName: Transport Header
            name: Request Transport Header
          responseHeader:
            $type: HTTPNamedToolOutputProvider
            menuName: Transport Header
            name: Response Transport Header
          xmlRequestOutput:
            $type: NamedXMLToolOutputProvider
            menuName: Traffic
            name: Request Traffic
          trafficOutput:
            m_name: Traffic Stream
          objectOutput:
            $type: ObjectOutputProvider
            outputTools:
            - $type: TrafficViewer
              iconName: TrafficViewer
              name: Traffic Viewer
              showRequestHeaders: true
              showResponseHeaders: true
            name: Traffic Object
        literal:
          use: 1
          text:
            MessagingClient_LiteralMessage: ""
            type: application/json
          dataSource:
            columnName: "Accounts: accountBalance"
        mode: Literal
        literalQuery:
          isPropertiesRef: true
        literalPath:
          pathElements:
          - values:
            - $type: ScriptedValue
            fixedValue:
              $type: StringTestValue
              value: customers
          - values:
            - $type: ScriptedValue
            fixedValue:
              $type: StringTestValue
              value: 12212
          - values:
            - $type: ScriptedValue
            fixedValue:
              $type: StringTestValue
              value: accounts
        constrainedPath:
          pathParameters:
          - $type: ElementValue
            writeType: true
            hasReference: true
            qnameAsString: :customerId
            replacedColumn: ""
            values:
            - $type: IntegerValue
              replacedColumn: ""
              value: 12212
        resourceMethod:
          resourceId: "/customers/{customerId}/accounts"
          httpMethod: GET
        baseUrl:
          values:
          - $type: ScriptedValue
          - $type: WadlTestValue
            value: http://demo:8080/parabank/services/bank
          fixedValue:
            $type: StringTestValue
            value: "${BASEURL}"
    - $type: RESTClientToolTest
      testLogic: true
      testFlowLogic:
        condition: true
      testID: 756
      enabled: true
      name: "/accounts/{accountId} - GET"
      performanceGroup: 0
      tool:
        $type: RESTClient
        iconName: RESTClient
        name: "/accounts/{accountId} - GET"
        outputTools:
        - $type: GenericAssertionTool
          iconName: XMLAssertor
          name: JSON Assertor
          wrappedTool:
            $type: XMLAssertionTool
            iconName: XMLAssertor
            name: XML Assertor
            assertions:
            - $type: NumericAssertion
              timestamp: 1583183751537
              name: Compare New Account Balance
              Assertion_XPath: /root/balance
              value:
                name: Numeric
                value:
                  fixedValue:
                    $type: StringTestValue
                  parameterizedValue:
                    column: "Test 2: balance"
                  selectedIndex: -2
            message:
              $type: ExpectedXMLMessage
              message: true
          conversionStrategy:
            dataFormatName: JSON
            conversionStrategyId: JSON
            conversionStrategyClassName: com.parasoft.xml.convert.json.JsonConversionStrategy
        formJson:
          value:
            $type: ElementValue
            writeType: true
            hasReference: true
            qnameAsString: :root
            replacedColumn: ""
            values:
            - $type: ComplexValue
              replacedColumn: ""
              attributes:
              - replacedColumn: ""
                value:
                  $type: StringValue
                  replacedColumn: ""
                  value: object
                  xmlEncoding: 2
                useValue: true
              compositorValue: true
              compositorValueObj:
                replacedColumn: ""
                values:
                  $type: CompositorValueSetCollectionSet
                  set:
                  - $type: CompositorValueSet
          elementTypeName: root
        hasServiceInfo: true
        serviceInfo:
          serviceDescriptor:
            $type: StandardServiceDescriptor
            location: http://parabank.parasoft.com/parabank/services/bank/swagger.yaml
          serviceName: ""
          versionName: ""
        jsonBuilder:
          hasValue: true
          value:
            $type: JSONObjectValue
            nameIsNull: true
        schemaURL:
          MessagingClient_SchemaLocation: "${SWAGGER}"
        formInput:
          value:
            $type: ElementValue
            writeType: true
            hasReference: true
            qnameAsString: ":"
            replacedColumn: ""
            values:
            - $type: ComplexValue
              replacedColumn: ""
              compositorValue: true
              compositorValueObj:
                replacedColumn: ""
                values:
                  $type: CompositorValueSetCollectionSet
                  set:
                  - $type: CompositorValueSet
        jmsMessageOutputProvider:
          $type: JMSMessageOutputProvider
          jmsOutputProviderRequest:
            $type: JMSOutputProvider
            name: Request Object
            menuName: Object
          jmsOutputProviderResponse:
            $type: JMSOutputProvider
            name: Response Message Object
            menuName: Message Object
        validResponseRange:
          validResponseRange:
            values:
            - $type: ScriptedValue
            fixedValue:
              $type: StringTestValue
              validResponseRange: 200
        router:
          values:
          - $type: ScriptedValue
          fixedValue:
            $type: StringTestValue
            HTTPClient_Endpoint: "${BASEURL}/accounts/12345?_type=json"
        urlParameters:
          properties:
          - name: _type
            value:
              values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                value: json
        transportProperties:
          manager:
            protocol: 1
            properties:
            - $type: HTTPClientHTTPProperties
              followRedirects:
                bool: true
              common:
                auth:
                  useDefault: false
                  customType: 1
                method:
                  values:
                  - $type: ScriptedValue
                  fixedValue:
                    $type: HTTPMethodTestValue
                    method: GET
                httpHeaders:
                  properties:
                  - name: Accept
                    value:
                      values:
                      - $type: ScriptedValue
                      fixedValue:
                        $type: StringTestValue
                        value: application/json
              keepAlive1_1:
                bool: true
            - $type: HTTPClientHTTPProperties
              followRedirects:
                bool: true
              common:
                auth:
                  useDefault: false
                  customType: 1
                method:
                  values:
                  - $type: ScriptedValue
                  fixedValue:
                    $type: HTTPMethodTestValue
                    method: GET
                httpHeaders:
                  properties:
                  - name: Accept
                    value:
                      values:
                      - $type: ScriptedValue
                      fixedValue:
                        $type: StringTestValue
                        value: application/json
              protocol: 1
              keepAlive1_1:
                bool: true
            - $type: NoneTransportProperties
          messageExchangePattern:
            inverted: true
        outputProviders:
          requestHeader:
            $type: HTTPNamedToolOutputProvider
            menuName: Transport Header
            name: Request Transport Header
          responseHeader:
            $type: HTTPNamedToolOutputProvider
            menuName: Transport Header
            name: Response Transport Header
          xmlRequestOutput:
            $type: NamedXMLToolOutputProvider
            menuName: Traffic
            name: Request Traffic
          trafficOutput:
            m_name: Traffic Stream
          objectOutput:
            $type: ObjectOutputProvider
            outputTools:
            - $type: TrafficViewer
              iconName: TrafficViewer
              name: Traffic Viewer
              showRequestHeaders: true
              showResponseHeaders: true
            name: Traffic Object
        literal:
          use: 1
          text:
            MessagingClient_LiteralMessage: ""
            type: application/json
        mode: Literal
        literalQuery:
          isPropertiesRef: true
        literalPath:
          pathElements:
          - values:
            - $type: ScriptedValue
            fixedValue:
              $type: StringTestValue
              value: accounts
          - values:
            - $type: ScriptedValue
            fixedValue:
              $type: StringTestValue
              value: 12345
        constrainedPath:
          pathParameters:
          - $type: ElementValue
            writeType: true
            hasReference: true
            qnameAsString: :accountId
            replacedColumn: ""
            values:
            - $type: IntegerValue
              replacedColumn: ""
              mode: 3
              columnName: "Test 2: id"
              value: 12345
        resourceMethod:
          resourceId: "/accounts/{accountId}"
          httpMethod: GET
        resourceMode: 3
        baseUrl:
          values:
          - $type: ScriptedValue
          - $type: WadlTestValue
            value: http://18.237.146.177:8090/parabank/services/bank
          fixedValue:
            $type: StringTestValue
            value: "${BASEURL}"
    - $type: ToolTest
      testLogic: true
      testFlowLogic:
        condition: true
      testID: 757
      enabled: true
      name: DB Tool
      tool:
        $type: DbTool
        iconName: DBTool
        name: DB Tool
        magicToken:
          fixedValue:
            $type: StringTestValue
            value: GO
        outputProviders:
          xmlRequestOutput:
            $type: NamedXMLToolOutputProvider
            name: SQL Query
          xmlResponseOutput:
            $type: NamedXMLToolOutputProvider
            outputTools:
            - $type: XMLAssertionTool
              iconName: XMLAssertor
              name: XML Assertor
              assertions:
              - $type: NumericAssertion
                timestamp: 1576780092793
                name: Compare Balance Between API and DB
                Assertion_XPath: /results/resultSet/rows/row/BALANCE
                value:
                  name: Numeric
                  value:
                    fixedValue:
                      $type: StringTestValue
                    parameterizedValue:
                      column: "Test 2: balance"
                    selectedIndex: -2
              - $type: OccurrenceAssertion
                timestamp: 1583967695108
                name: Occurrence Assertion
                extractEntireElement: true
                Assertion_XPath: /results/resultSet/rows/row
                value:
                  name: Count
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: 1
              message:
                $type: ExpectedXMLMessage
                message: true
            name: Results as XML
          objectOutput:
            $type: ObjectOutputProvider
            outputTools:
            - $type: TrafficViewer
              iconName: TrafficViewer
              name: Traffic Viewer
              showRequestHeaders: true
              showResponseHeaders: true
            name: Traffic Object
        sqlQuery:
          fixedValue:
            $type: StringTestValue
            useMultipleLines: true
            value: "select * from Account where ID=${Test 2: id}"
        propertyName: Parabank HSQL DB
        shareMode: 1
        failOnSQLException: true
        account:
          local:
            $type: DbConfigSettings
            password: AwAAAAA=
            uri: jdbc:hsqldb:hsql://localhost/parabank
            username: sa
            driver: org.hsqldb.jdbcDriver
  - $type: TestSuite
    testLogic: true
    testFlowLogic:
      condition: true
    testID: 758
    enabled: true
    name: Search Accounts (API+DB)
    profiles:
    - Search Accounts
    profileMappingID: 0
    maxProfileMappingID: 1
    nextIdentifier: 89
    dataSources:
    - id: ds_-676523084_1580408428528_1118022195
      impl:
        $type: WritableDataSource
        model:
          columnCount: 2
          columnIdentifiers:
          - accountBalance
          - accountId
          rowCount: 2756
          rows:
          - - -2310.00
            - 12345
          - - 10.45
            - 12456
          - - 100.00
            - 12567
          - - -100.00
            - 12678
          - - 100.00
            - 12789
          - - 0.00
            - 12900
          - - -800.00
            - 13011
          - - 1100.00
            - 13122
          - - 100.00
            - 13233
          - - 1231.10
            - 13344
          - - 100.00
            - 13566
          - - 100.00
            - 13677
          - - 100.00
            - 13788
          - - 100.00
            - 13899
          - - 100.00
            - 14010
          - - 100.00
            - 14121
          - - 100.00
            - 14232
          - - 100.00
            - 14343
          - - 100.00
            - 14454
          - - 1351.12
            - 54321
        resetMode: 2
        writingMode: 3
      name: Accounts
      useAllRows: true
    tests:
    - $type: RESTClientToolTest
      testLogic: true
      testFlowLogic:
        condition: true
      testID: 759
      enabled: true
      name: "/customers/{customerId}/accounts - GET"
      performanceGroup: 10
      tool:
        $type: RESTClient
        dataSourceNames:
        - Accounts
        iconName: RESTClient
        name: "/customers/{customerId}/accounts - GET"
        outputTools:
        - $type: GenericDataBank
          dataSourceNames:
          - Accounts
          iconName: XMLDataBank
          name: JSON Data Bank
          wrappedTool:
            $type: XMLtoDataSource
            dataSourceNames:
            - Accounts
            iconName: XMLDataBank
            name: XML Data Bank
            selectedXPaths:
            - elementOption: 1
              contentOption: 1
              XMLDataBank_ExtractXPath: "/root/item/id[1]/text()"
              mode: 1
            - elementOption: 1
              contentOption: 1
              XMLDataBank_ExtractXPath: "/root/item/balance[1]/text()"
              mode: 1
            canonicalizeOutput: true
            xmlMessage: true
            virtualDSCreator:
              writableColumns:
              - dataSourceNames:
                - "Accounts: accountId"
                mode: 2
                customName: "Test 1: id"
              - dataSourceNames:
                - "Accounts: accountBalance"
                mode: 2
                customName: "Test 1: balance"
          conversionStrategy:
            dataFormatName: JSON
            conversionStrategyId: JSON
            conversionStrategyClassName: com.parasoft.xml.convert.json.JsonConversionStrategy
        formJson:
          value:
            $type: ElementValue
            writeType: true
            hasReference: true
            qnameAsString: :root
            replacedColumn: ""
            values:
            - $type: ComplexValue
              replacedColumn: ""
              attributes:
              - replacedColumn: ""
                value:
                  $type: StringValue
                  replacedColumn: ""
                  value: object
                  xmlEncoding: 2
                useValue: true
              compositorValue: true
              compositorValueObj:
                replacedColumn: ""
                values:
                  $type: CompositorValueSetCollectionSet
                  set:
                  - $type: CompositorValueSet
          elementTypeName: root
        hasServiceInfo: true
        serviceInfo:
          serviceDescriptor:
            $type: StandardServiceDescriptor
            location: http://192.168.56.101:8080/parabank/services/bank/swagger.yaml
          serviceName: ""
          versionName: ""
        jsonBuilder:
          hasValue: true
          value:
            $type: JSONObjectValue
            nameIsNull: true
        schemaURL:
          MessagingClient_SchemaLocation: "${SWAGGER}"
        formInput:
          value:
            $type: ElementValue
            writeType: true
            hasReference: true
            qnameAsString: ":"
            replacedColumn: ""
            values:
            - $type: ComplexValue
              replacedColumn: ""
              compositorValue: true
              compositorValueObj:
                replacedColumn: ""
                values:
                  $type: CompositorValueSetCollectionSet
                  set:
                  - $type: CompositorValueSet
        constrainToSchema: false
        jmsMessageOutputProvider:
          $type: JMSMessageOutputProvider
          jmsOutputProviderRequest:
            $type: JMSOutputProvider
            name: Request Object
            menuName: Object
          jmsOutputProviderResponse:
            $type: JMSOutputProvider
            name: Response Message Object
            menuName: Message Object
        validResponseRange:
          validResponseRange:
            values:
            - $type: ScriptedValue
            fixedValue:
              $type: StringTestValue
              validResponseRange: 200
        router:
          values:
          - $type: ScriptedValue
          fixedValue:
            $type: StringTestValue
            HTTPClient_Endpoint: "${BASEURL}/customers/12212/accounts?_type=json"
        urlParameters:
          properties:
          - name: _type
            value:
              values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                value: json
        transportProperties:
          manager:
            properties:
            - $type: HTTPClientHTTPProperties
              followRedirects:
                bool: true
              common:
                auth:
                  useDefault: false
                  customType: 1
                method:
                  values:
                  - $type: ScriptedValue
                  fixedValue:
                    $type: HTTPMethodTestValue
                    method: GET
              keepAlive1_1:
                bool: true
            - $type: HTTPClientHTTPProperties
              followRedirects:
                bool: true
              common:
                auth:
                  useDefault: false
                  customType: 1
                method:
                  values:
                  - $type: ScriptedValue
                  fixedValue:
                    $type: HTTPMethodTestValue
                    method: GET
              protocol: 1
              keepAlive1_1:
                bool: true
            - $type: NoneTransportProperties
          messageExchangePattern:
            inverted: true
        outputProviders:
          requestHeader:
            $type: HTTPNamedToolOutputProvider
            menuName: Transport Header
            name: Request Transport Header
          responseHeader:
            $type: HTTPNamedToolOutputProvider
            menuName: Transport Header
            name: Response Transport Header
          xmlRequestOutput:
            $type: NamedXMLToolOutputProvider
            menuName: Traffic
            name: Request Traffic
          trafficOutput:
            m_name: Traffic Stream
          objectOutput:
            $type: ObjectOutputProvider
            outputTools:
            - $type: TrafficViewer
              iconName: TrafficViewer
              name: Traffic Viewer
              showRequestHeaders: true
            name: Traffic Object
        literal:
          use: 1
          text:
            MessagingClient_LiteralMessage: ""
            type: application/json
          dataSource:
            columnName: accountBalance
        mode: Literal
        literalQuery:
          isPropertiesRef: true
        literalPath:
          pathElements:
          - values:
            - $type: ScriptedValue
            fixedValue:
              $type: StringTestValue
              value: customers
          - values:
            - $type: ScriptedValue
            fixedValue:
              $type: StringTestValue
              value: 12212
          - values:
            - $type: ScriptedValue
            fixedValue:
              $type: StringTestValue
              value: accounts
        constrainedPath:
          pathParameters:
          - $type: ElementValue
            writeType: true
            hasReference: true
            qnameAsString: :customerId
            replacedColumn: ""
            values:
            - $type: IntegerValue
              replacedColumn: ""
              value: 0
        resourceMethod:
          resourceId: "/customers/{customerId}/accounts"
          httpMethod: GET
        baseUrl:
          values:
          - $type: ScriptedValue
          - $type: WadlTestValue
            value: http://demo:8080/parabank/services/bank
          fixedValue:
            $type: StringTestValue
            value: "${BASEURL}"
    - $type: TestSuite
      testLogic: true
      testFlowLogic:
        condition: true
      testID: 760
      enabled: true
      name: Loop Accounts
      profileMappingID: 0
      maxProfileMappingID: 1
      nextIdentifier: 1
      runMode: 1
      tests:
      - $type: RESTClientToolTest
        testLogic: true
        testFlowLogic:
          condition: true
        testID: 761
        enabled: true
        name: "/accounts/{accountId} - GET"
        performanceGroup: 0
        tool:
          $type: RESTClient
          dataSourceNames:
          - Accounts
          iconName: RESTClient
          name: "/accounts/{accountId} - GET"
          outputTools:
          - $type: GenericAssertionTool
            dataSourceNames:
            - Accounts
            iconName: XMLAssertor
            name: JSON Assertor
            wrappedTool:
              $type: XMLAssertionTool
              dataSourceNames:
              - Accounts
              iconName: XMLAssertor
              name: XML Assertor
              assertions:
              - $type: NumericAssertion
                timestamp: 1560818572743
                name: Compare Balance From List
                Assertion_XPath: /root/balance
                value:
                  name: Numeric
                  value:
                    fixedValue:
                      $type: StringTestValue
                    parameterizedValue:
                      column: "Accounts: accountBalance"
                    selectedIndex: -2
              message:
                $type: ExpectedXMLMessage
                message: true
            conversionStrategy:
              dataFormatName: JSON
              conversionStrategyId: JSON
              conversionStrategyClassName: com.parasoft.xml.convert.json.JsonConversionStrategy
          formJson:
            value:
              $type: ElementValue
              writeType: true
              hasReference: true
              qnameAsString: :root
              replacedColumn: ""
              values:
              - $type: ComplexValue
                replacedColumn: ""
                attributes:
                - replacedColumn: ""
                  value:
                    $type: StringValue
                    replacedColumn: ""
                    value: object
                    xmlEncoding: 2
                  useValue: true
                compositorValue: true
                compositorValueObj:
                  replacedColumn: ""
                  values:
                    $type: CompositorValueSetCollectionSet
                    set:
                    - $type: CompositorValueSet
            elementTypeName: root
          hasServiceInfo: true
          serviceInfo:
            serviceDescriptor:
              $type: StandardServiceDescriptor
              location: http://192.168.56.101:8080/parabank/services/bank/swagger.yaml
            serviceName: ""
            versionName: ""
          jsonBuilder:
            hasValue: true
            value:
              $type: JSONObjectValue
              nameIsNull: true
          schemaURL:
            MessagingClient_SchemaLocation: "${SWAGGER}"
          formInput:
            value:
              $type: ElementValue
              writeType: true
              hasReference: true
              qnameAsString: ":"
              replacedColumn: ""
              values:
              - $type: ComplexValue
                replacedColumn: ""
                compositorValue: true
                compositorValueObj:
                  replacedColumn: ""
                  values:
                    $type: CompositorValueSetCollectionSet
                    set:
                    - $type: CompositorValueSet
          constrainToSchema: false
          jmsMessageOutputProvider:
            $type: JMSMessageOutputProvider
            jmsOutputProviderRequest:
              $type: JMSOutputProvider
              name: Request Object
              menuName: Object
            jmsOutputProviderResponse:
              $type: JMSOutputProvider
              name: Response Message Object
              menuName: Message Object
          validResponseRange:
            validResponseRange:
              values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                validResponseRange: 200
          router:
            values:
            - $type: ScriptedValue
            fixedValue:
              $type: StringTestValue
              HTTPClient_Endpoint: "${BASEURL}/accounts/${Accounts: accountId}?_type=json"
          urlParameters:
            properties:
            - name: _type
              value:
                values:
                - $type: ScriptedValue
                fixedValue:
                  $type: StringTestValue
                  value: json
          transportProperties:
            manager:
              properties:
              - $type: HTTPClientHTTPProperties
                followRedirects:
                  bool: true
                common:
                  auth:
                    useDefault: false
                    customType: 1
                  method:
                    values:
                    - $type: ScriptedValue
                    fixedValue:
                      $type: HTTPMethodTestValue
                      method: GET
                keepAlive1_1:
                  bool: true
              - $type: HTTPClientHTTPProperties
                followRedirects:
                  bool: true
                common:
                  auth:
                    useDefault: false
                    customType: 1
                  method:
                    values:
                    - $type: ScriptedValue
                    fixedValue:
                      $type: HTTPMethodTestValue
                      method: GET
                protocol: 1
                keepAlive1_1:
                  bool: true
              - $type: NoneTransportProperties
            messageExchangePattern:
              inverted: true
          outputProviders:
            requestHeader:
              $type: HTTPNamedToolOutputProvider
              menuName: Transport Header
              name: Request Transport Header
            responseHeader:
              $type: HTTPNamedToolOutputProvider
              menuName: Transport Header
              name: Response Transport Header
            xmlRequestOutput:
              $type: NamedXMLToolOutputProvider
              menuName: Traffic
              name: Request Traffic
            trafficOutput:
              m_name: Traffic Stream
            objectOutput:
              $type: ObjectOutputProvider
              outputTools:
              - $type: TrafficViewer
                iconName: TrafficViewer
                name: Traffic Viewer
                showRequestHeaders: true
                showResponseHeaders: true
              name: Traffic Object
          literal:
            use: 1
            text:
              MessagingClient_LiteralMessage: ""
              type: application/json
            dataSource:
              columnName: "Accounts: accountId"
          mode: Literal
          literalQuery:
            isPropertiesRef: true
          literalPath:
            pathElements:
            - values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                value: accounts
            - values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                value: 12345
              parameterizedValue:
                column: "Accounts: accountId"
              selectedIndex: -2
          constrainedPath:
            pathParameters:
            - $type: ElementValue
              writeType: true
              hasReference: true
              qnameAsString: :accountId
              replacedColumn: ""
              values:
              - $type: IntegerValue
                replacedColumn: ""
                value: 12345
          resourceMethod:
            resourceId: "/accounts/{accountId}"
            httpMethod: GET
          baseUrl:
            values:
            - $type: ScriptedValue
            - $type: WadlTestValue
              value: http://demo:8080/parabank/services/bank
            fixedValue:
              $type: StringTestValue
              value: "${BASEURL}"
      - $type: ToolTest
        testLogic: true
        testFlowLogic:
          condition: true
        testID: 762
        enabled: true
        name: DB Tool
        tool:
          $type: DbTool
          dataSourceNames:
          - Accounts
          iconName: DBTool
          name: DB Tool
          magicToken:
            fixedValue:
              $type: StringTestValue
              value: GO
          outputProviders:
            xmlRequestOutput:
              $type: NamedXMLToolOutputProvider
              name: SQL Query
            xmlResponseOutput:
              $type: NamedXMLToolOutputProvider
              outputTools:
              - $type: XMLAssertionTool
                dataSourceNames:
                - Accounts
                iconName: XMLAssertor
                name: XML Assertor
                assertions:
                - $type: NumericAssertion
                  timestamp: 1576780092793
                  name: Compare Balance Between API and DB
                  Assertion_XPath: /results/resultSet/rows/row/BALANCE
                  value:
                    name: Numeric
                    value:
                      fixedValue:
                        $type: StringTestValue
                      parameterizedValue:
                        column: "Accounts: accountBalance"
                      selectedIndex: -2
                - $type: OccurrenceAssertion
                  timestamp: 1583967695108
                  name: Occurrence Assertion
                  extractEntireElement: true
                  Assertion_XPath: /results/resultSet/rows/row
                  value:
                    name: Count
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: 1
                message:
                  $type: ExpectedXMLMessage
                  message: true
              name: Results as XML
            objectOutput:
              $type: ObjectOutputProvider
              outputTools:
              - $type: TrafficViewer
                iconName: TrafficViewer
                name: Traffic Viewer
                showRequestHeaders: true
                showResponseHeaders: true
              name: Traffic Object
          sqlQuery:
            fixedValue:
              $type: StringTestValue
              useMultipleLines: true
              value: "select * from Account where ID=${Accounts: accountId}"
          propertyName: Parabank HSQL DB
          shareMode: 1
          failOnSQLException: true
          account:
            local:
              $type: DbConfigSettings
              password: AwAAAAA=
              uri: jdbc:hsqldb:hsql://localhost/parabank
              username: sa
              driver: org.hsqldb.jdbcDriver
  - $type: TestSuite
    testLogic: true
    testFlowLogic:
      condition: true
    testID: 763
    enabled: true
    name: Compare Responses From 2 Endpoints
    profileMappingID: 0
    maxProfileMappingID: 1
    nextIdentifier: 741
    tests:
    - $type: TestSuite
      testLogic: true
      testID: 764
      enabled: true
      name: SOAP
      profileMappingID: 0
      maxProfileMappingID: 1
      nextIdentifier: 1
      dataSources:
      - id: ds_214481827_1690240060306_189241587
        impl:
          $type: TableDataSource
          model:
            columnIdentifiers:
            - loanAmount
            - downPayment
            rows:
            - - 1000
              - 100
            - - 1000000
              - 1
            - - 5000
              - 100
        name: loan_data
        useAllRows: true
      tests:
      - $type: SOAPRPCToolTest
        testLogic: true
        testID: 765
        enabled: true
        name: requestLoan
        performanceGroup: 0
        tool:
          $type: SOAPRPCTool
          dataSourceNames:
          - loan_data
          iconName: SOAPClient
          name: requestLoan (v1)
          hasServiceInfo: true
          serviceInfo:
            serviceDescriptor:
              $type: StandardServiceDescriptor
              location: http://18.237.146.17:8090/parabank/services/LoanProcessor?wsdl
          soapResponse:
            $type: SOAPOutputProviderImpl
            outputTools:
            - $type: XMLtoDataSource
              dataSourceNames:
              - loan_data
              allowToolbar: false
              iconName: XMLDataBank
              name: XML Data Bank
              selectedXPaths:
              - elementOption: 1
                contentOption: 2
                XMLDataBank_ExtractXPath: /*:Envelope
                target: 1
                mode: 1
              xmlMessage: true
              virtualDSCreator:
                writableColumns:
                - customName: "Test 1: Envelope"
          endpointAlternative: ""
          operationAlternative: ""
          messageAlternative: ""
          wsdlProperties:
            wsdlURL:
              SOAPClient_WSDLLocation: "http://${SV_HOST}:8090/parabank/services/LoanProcessor?wsdl"
          endpointProperties:
            defaultEndpoint:
              $type: DefaultEndpointType
            uddiEndpoint:
              $type: UDDIEndpointType
              uddiEndpoint:
                SOAPClient_UDDIServiceKey: ""
            customEndpoint:
              $type: CustomEndpointType
              customEndpoint:
                SOAPClient_CustomEndpoint: "http://${SV_HOST}:8090/parabank/services/LoanProcessor"
            wsdlEndpoint:
              $type: WsdlEndpointType
              wsdlEndpoint:
                value: http://18.237.146.177:8090/parabank/services/LoanProcessor
            mode: 2
          mimeOutputProvider:
            $type: MIMEOutputProvider
            attachmentOutputProvider:
              menuName: Attachment
              name: Response Attachment
          outputProviders:
            requestHeader:
              $type: HTTPNamedToolOutputProvider
              menuName: Transport Header
              name: Request Transport Header
            responseHeader:
              $type: HTTPNamedToolOutputProvider
              menuName: Transport Header
              name: Response Transport Header
            xmlRequestOutput:
              $type: NamedXMLToolOutputProvider
              menuName: SOAP Envelope
              name: Request SOAP Envelope
            trafficOutput:
              m_name: Traffic Stream
            objectOutput:
              $type: ObjectOutputProvider
              outputTools:
              - $type: TrafficViewer
                iconName: TrafficViewer
                name: Traffic Viewer
                saveTraffic: true
                testRuns:
                - sequences:
                  - invocations:
                    - requestTimeNanos: 1088643758403300
                      responseTimeNanos: 1088643872923699
                      invKey:
                        description: http://18.237.146.177:8090/parabank/services/LoanProcessor
                        seqNum: 1
                      request: true
                      requestMessage:
                        contentEncoding: UTF-8
                        content: PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiPz48U09BUC1FTlY6RW52ZWxvcGUgeG1sbnM6U09BUC1FTlY9Imh0dHA6Ly9zY2hlbWFzLnhtbHNvYXAub3JnL3NvYXAvZW52ZWxvcGUvIiB4bWxuczp4c2Q9Imh0dHA6Ly93d3cudzMub3JnLzIwMDEvWE1MU2NoZW1hIiB4bWxuczp4c2k9Imh0dHA6Ly93d3cudzMub3JnLzIwMDEvWE1MU2NoZW1hLWluc3RhbmNlIj48U09BUC1FTlY6Qm9keT48cmVxdWVzdExvYW4geG1sbnM9Imh0dHA6Ly9zZXJ2aWNlLnBhcmFiYW5rLnBhcmFzb2Z0LmNvbS8iPjxsb2FuUmVxdWVzdD48cmVxdWVzdERhdGUgeG1sbnM9IiI+MjAyMy0wNy0yNFQyMzowODo0MS45NTFaPC9yZXF1ZXN0RGF0ZT48Y3VzdG9tZXJJZCB4bWxucz0iIj4xMjIxMjwvY3VzdG9tZXJJZD48YXZhaWxhYmxlRnVuZHMgeG1sbnM9IiI+MTM5Mi42NzwvYXZhaWxhYmxlRnVuZHM+PGxvYW5BbW91bnQgeG1sbnM9IiI+MTAwMDAwMDwvbG9hbkFtb3VudD48ZG93blBheW1lbnQgeG1sbnM9IiI+MTwvZG93blBheW1lbnQ+PC9sb2FuUmVxdWVzdD48L3JlcXVlc3RMb2FuPjwvU09BUC1FTlY6Qm9keT48L1NPQVAtRU5WOkVudmVsb3BlPg==
                        endpoint: http://18.237.146.177:8090/parabank/services/LoanProcessor
                        type: 1
                        httpHeader: "POST /parabank/services/LoanProcessor HTTP/1.1\r\
                          \nHost: 18.237.146.177:8090\r\nContent-Type: text/xml; charset=UTF-8\r\
                          \nContent-Length: 592\r\nSOAPAction: \"\"\r\nAccept: */*\r\
                          \nUser-Agent: Apache-CXF/3.5.5\r\nCache-Control: no-cache\r\
                          \nPragma: no-cache"
                        mimeType: true
                        mimeTypeObj:
                          extensions:
                          - xml
                          isXML: true
                          isText: true
                          type: text/xml
                      response: true
                      responseMessage:
                        contentEncoding: UTF-8
                        content: PHNvYXA6RW52ZWxvcGUgeG1sbnM6c29hcD0iaHR0cDovL3NjaGVtYXMueG1sc29hcC5vcmcvc29hcC9lbnZlbG9wZS8iPjxzb2FwOkJvZHk+PG5zMjpyZXF1ZXN0TG9hblJlc3BvbnNlIHhtbG5zOm5zMj0iaHR0cDovL3NlcnZpY2UucGFyYWJhbmsucGFyYXNvZnQuY29tLyI+PG5zMjpsb2FuUmVzcG9uc2U+PHJlc3BvbnNlRGF0ZT4yMDI0LTExLTI2VDIzOjQzOjAzLjk4OVo8L3Jlc3BvbnNlRGF0ZT48bG9hblByb3ZpZGVyTmFtZT5XZWFsdGggU2VjdXJpdGllcyBEeW5hbWljIExvYW5zIChXU0RMKTwvbG9hblByb3ZpZGVyTmFtZT48YXBwcm92ZWQ+ZmFsc2U8L2FwcHJvdmVkPjxtZXNzYWdlPmVycm9yLmluc3VmZmljaWVudC5mdW5kczwvbWVzc2FnZT48L25zMjpsb2FuUmVzcG9uc2U+PC9uczI6cmVxdWVzdExvYW5SZXNwb25zZT48L3NvYXA6Qm9keT48L3NvYXA6RW52ZWxvcGU+
                        endpoint: http://18.237.146.177:8090/parabank/services/LoanProcessor
                        type: 2
                        httpHeader: "HTTP/1.1 200 \r\nContent-Type: text/xml;charset=UTF-8\r\
                          \nContent-Length: 444\r\nDate: Tue, 26 Nov 2024 23:43:03\
                          \ GMT"
                        mimeType: true
                        mimeTypeObj:
                          extensions:
                          - xml
                          isXML: true
                          isText: true
                          type: text/xml
                      writeRequestTime: true
                      requestTime: 1732664583962
                      writeResponseTime: true
                      responseTime: 1732664584077
                    seqKey:
                      keys:
                      - ""
                      - ""
                      - downPayment
                      - 1
                      - loanAmount
                      - 1000000
                      row:
                        refs:
                        - first: false
                          dataSourceName: loan_data
                          row: 2
                        first: false
                        last: false
                  - invocations:
                    - requestTimeNanos: -1
                      responseTimeNanos: -1
                      invKey:
                        description: http://18.237.146.17:8090/parabank/services/LoanProcessor
                        seqNum: 1
                      request: true
                      requestMessage:
                        contentEncoding: UTF-8
                        content: PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiPz48U09BUC1FTlY6RW52ZWxvcGUgeG1sbnM6U09BUC1FTlY9Imh0dHA6Ly9zY2hlbWFzLnhtbHNvYXAub3JnL3NvYXAvZW52ZWxvcGUvIiB4bWxuczp4c2Q9Imh0dHA6Ly93d3cudzMub3JnLzIwMDEvWE1MU2NoZW1hIiB4bWxuczp4c2k9Imh0dHA6Ly93d3cudzMub3JnLzIwMDEvWE1MU2NoZW1hLWluc3RhbmNlIj48U09BUC1FTlY6Qm9keT48cmVxdWVzdExvYW4geG1sbnM9Imh0dHA6Ly9zZXJ2aWNlLnBhcmFiYW5rLnBhcmFzb2Z0LmNvbS8iPjxsb2FuUmVxdWVzdD48cmVxdWVzdERhdGUgeG1sbnM9IiI+MjAyMy0wNy0yNFQyMzowODo0MS45NTFaPC9yZXF1ZXN0RGF0ZT48Y3VzdG9tZXJJZCB4bWxucz0iIj4xMjIxMjwvY3VzdG9tZXJJZD48YXZhaWxhYmxlRnVuZHMgeG1sbnM9IiI+MTM5Mi42NzwvYXZhaWxhYmxlRnVuZHM+PGxvYW5BbW91bnQgeG1sbnM9IiI+MTAwMDwvbG9hbkFtb3VudD48ZG93blBheW1lbnQgeG1sbnM9IiI+MTAwPC9kb3duUGF5bWVudD48L2xvYW5SZXF1ZXN0PjwvcmVxdWVzdExvYW4+PC9TT0FQLUVOVjpCb2R5PjwvU09BUC1FTlY6RW52ZWxvcGU+
                        endpoint: http://18.237.146.17:8090/parabank/services/LoanProcessor
                        type: 1
                        httpHeader: ""
                        mimeType: true
                        mimeTypeObj:
                          extensions:
                          - xml
                          isXML: true
                          isText: true
                          type: text/xml
                      response: true
                      responseMessage:
                        content: ""
                        endpoint: http://18.237.146.17:8090/parabank/services/LoanProcessor
                        type: 2
                        httpHeader: ""
                        mimeType: true
                        mimeTypeObj:
                          extensions:
                          - txt
                          isText: true
                          type: text/plain
                      writeRequestTime: true
                      requestTime: -1
                      writeResponseTime: true
                      responseTime: -1
                    seqKey:
                      keys:
                      - ""
                      - ""
                      - downPayment
                      - 100
                      - loanAmount
                      - 1000
                      row:
                        refs:
                        - dataSourceName: loan_data
                          row: 1
                        last: false
                  testName: requestLoan (qa1.parasoft.com)
                  writeTimestamp: true
                  timestamp: 1732664562839
                - sequences:
                  - invocations:
                    - requestTimeNanos: 1088667753496600
                      responseTimeNanos: 1088667798290300
                      invKey:
                        description: http://18.237.146.177:8090/parabank/services/LoanProcessor
                        seqNum: 1
                      request: true
                      requestMessage:
                        contentEncoding: UTF-8
                        content: PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiPz48U09BUC1FTlY6RW52ZWxvcGUgeG1sbnM6U09BUC1FTlY9Imh0dHA6Ly9zY2hlbWFzLnhtbHNvYXAub3JnL3NvYXAvZW52ZWxvcGUvIiB4bWxuczp4c2Q9Imh0dHA6Ly93d3cudzMub3JnLzIwMDEvWE1MU2NoZW1hIiB4bWxuczp4c2k9Imh0dHA6Ly93d3cudzMub3JnLzIwMDEvWE1MU2NoZW1hLWluc3RhbmNlIj48U09BUC1FTlY6Qm9keT48cmVxdWVzdExvYW4geG1sbnM9Imh0dHA6Ly9zZXJ2aWNlLnBhcmFiYW5rLnBhcmFzb2Z0LmNvbS8iPjxsb2FuUmVxdWVzdD48cmVxdWVzdERhdGUgeG1sbnM9IiI+MjAyMy0wNy0yNFQyMzowODo0MS45NTFaPC9yZXF1ZXN0RGF0ZT48Y3VzdG9tZXJJZCB4bWxucz0iIj4xMjIxMjwvY3VzdG9tZXJJZD48YXZhaWxhYmxlRnVuZHMgeG1sbnM9IiI+MTM5Mi42NzwvYXZhaWxhYmxlRnVuZHM+PGxvYW5BbW91bnQgeG1sbnM9IiI+NTAwMDwvbG9hbkFtb3VudD48ZG93blBheW1lbnQgeG1sbnM9IiI+MTAwPC9kb3duUGF5bWVudD48L2xvYW5SZXF1ZXN0PjwvcmVxdWVzdExvYW4+PC9TT0FQLUVOVjpCb2R5PjwvU09BUC1FTlY6RW52ZWxvcGU+
                        endpoint: http://18.237.146.177:8090/parabank/services/LoanProcessor
                        type: 1
                        httpHeader: "POST /parabank/services/LoanProcessor HTTP/1.1\r\
                          \nHost: 18.237.146.177:8090\r\nContent-Type: text/xml; charset=UTF-8\r\
                          \nContent-Length: 591\r\nSOAPAction: \"\"\r\nAccept: */*\r\
                          \nUser-Agent: Apache-CXF/3.5.5\r\nCache-Control: no-cache\r\
                          \nPragma: no-cache"
                        mimeType: true
                        mimeTypeObj:
                          extensions:
                          - xml
                          isXML: true
                          isText: true
                          type: text/xml
                      response: true
                      responseMessage:
                        contentEncoding: UTF-8
                        content: PHNvYXA6RW52ZWxvcGUgeG1sbnM6c29hcD0iaHR0cDovL3NjaGVtYXMueG1sc29hcC5vcmcvc29hcC9lbnZlbG9wZS8iPjxzb2FwOkJvZHk+PG5zMjpyZXF1ZXN0TG9hblJlc3BvbnNlIHhtbG5zOm5zMj0iaHR0cDovL3NlcnZpY2UucGFyYWJhbmsucGFyYXNvZnQuY29tLyI+PG5zMjpsb2FuUmVzcG9uc2U+PHJlc3BvbnNlRGF0ZT4yMDI0LTExLTI2VDIzOjQzOjI3LjkxOVo8L3Jlc3BvbnNlRGF0ZT48bG9hblByb3ZpZGVyTmFtZT5XZWFsdGggU2VjdXJpdGllcyBEeW5hbWljIExvYW5zIChXU0RMKTwvbG9hblByb3ZpZGVyTmFtZT48YXBwcm92ZWQ+dHJ1ZTwvYXBwcm92ZWQ+PC9uczI6bG9hblJlc3BvbnNlPjwvbnMyOnJlcXVlc3RMb2FuUmVzcG9uc2U+PC9zb2FwOkJvZHk+PC9zb2FwOkVudmVsb3BlPg==
                        endpoint: http://18.237.146.177:8090/parabank/services/LoanProcessor
                        type: 2
                        httpHeader: "HTTP/1.1 200 \r\nContent-Type: text/xml;charset=UTF-8\r\
                          \nContent-Length: 400\r\nDate: Tue, 26 Nov 2024 23:43:27\
                          \ GMT"
                        mimeType: true
                        mimeTypeObj:
                          extensions:
                          - xml
                          isXML: true
                          isText: true
                          type: text/xml
                      writeRequestTime: true
                      requestTime: 1732664607957
                      writeResponseTime: true
                      responseTime: 1732664608002
                    seqKey:
                      keys:
                      - ""
                      - ""
                      - downPayment
                      - 100
                      - loanAmount
                      - 5000
                      row:
                        refs:
                        - first: false
                          last: true
                          dataSourceName: loan_data
                          row: 3
                        first: false
                  - invocations:
                    - requestTimeNanos: 1088667665659900
                      responseTimeNanos: 1088667710351400
                      invKey:
                        description: http://18.237.146.177:8090/parabank/services/LoanProcessor
                        seqNum: 1
                      request: true
                      requestMessage:
                        contentEncoding: UTF-8
                        content: PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiPz48U09BUC1FTlY6RW52ZWxvcGUgeG1sbnM6U09BUC1FTlY9Imh0dHA6Ly9zY2hlbWFzLnhtbHNvYXAub3JnL3NvYXAvZW52ZWxvcGUvIiB4bWxuczp4c2Q9Imh0dHA6Ly93d3cudzMub3JnLzIwMDEvWE1MU2NoZW1hIiB4bWxuczp4c2k9Imh0dHA6Ly93d3cudzMub3JnLzIwMDEvWE1MU2NoZW1hLWluc3RhbmNlIj48U09BUC1FTlY6Qm9keT48cmVxdWVzdExvYW4geG1sbnM9Imh0dHA6Ly9zZXJ2aWNlLnBhcmFiYW5rLnBhcmFzb2Z0LmNvbS8iPjxsb2FuUmVxdWVzdD48cmVxdWVzdERhdGUgeG1sbnM9IiI+MjAyMy0wNy0yNFQyMzowODo0MS45NTFaPC9yZXF1ZXN0RGF0ZT48Y3VzdG9tZXJJZCB4bWxucz0iIj4xMjIxMjwvY3VzdG9tZXJJZD48YXZhaWxhYmxlRnVuZHMgeG1sbnM9IiI+MTM5Mi42NzwvYXZhaWxhYmxlRnVuZHM+PGxvYW5BbW91bnQgeG1sbnM9IiI+MTAwMDAwMDwvbG9hbkFtb3VudD48ZG93blBheW1lbnQgeG1sbnM9IiI+MTwvZG93blBheW1lbnQ+PC9sb2FuUmVxdWVzdD48L3JlcXVlc3RMb2FuPjwvU09BUC1FTlY6Qm9keT48L1NPQVAtRU5WOkVudmVsb3BlPg==
                        endpoint: http://18.237.146.177:8090/parabank/services/LoanProcessor
                        type: 1
                        httpHeader: "POST /parabank/services/LoanProcessor HTTP/1.1\r\
                          \nHost: 18.237.146.177:8090\r\nContent-Type: text/xml; charset=UTF-8\r\
                          \nContent-Length: 592\r\nSOAPAction: \"\"\r\nAccept: */*\r\
                          \nUser-Agent: Apache-CXF/3.5.5\r\nCache-Control: no-cache\r\
                          \nPragma: no-cache"
                        mimeType: true
                        mimeTypeObj:
                          extensions:
                          - xml
                          isXML: true
                          isText: true
                          type: text/xml
                      response: true
                      responseMessage:
                        contentEncoding: UTF-8
                        content: PHNvYXA6RW52ZWxvcGUgeG1sbnM6c29hcD0iaHR0cDovL3NjaGVtYXMueG1sc29hcC5vcmcvc29hcC9lbnZlbG9wZS8iPjxzb2FwOkJvZHk+PG5zMjpyZXF1ZXN0TG9hblJlc3BvbnNlIHhtbG5zOm5zMj0iaHR0cDovL3NlcnZpY2UucGFyYWJhbmsucGFyYXNvZnQuY29tLyI+PG5zMjpsb2FuUmVzcG9uc2U+PHJlc3BvbnNlRGF0ZT4yMDI0LTExLTI2VDIzOjQzOjI3LjgzMlo8L3Jlc3BvbnNlRGF0ZT48bG9hblByb3ZpZGVyTmFtZT5XZWFsdGggU2VjdXJpdGllcyBEeW5hbWljIExvYW5zIChXU0RMKTwvbG9hblByb3ZpZGVyTmFtZT48YXBwcm92ZWQ+ZmFsc2U8L2FwcHJvdmVkPjxtZXNzYWdlPmVycm9yLmluc3VmZmljaWVudC5mdW5kczwvbWVzc2FnZT48L25zMjpsb2FuUmVzcG9uc2U+PC9uczI6cmVxdWVzdExvYW5SZXNwb25zZT48L3NvYXA6Qm9keT48L3NvYXA6RW52ZWxvcGU+
                        endpoint: http://18.237.146.177:8090/parabank/services/LoanProcessor
                        type: 2
                        httpHeader: "HTTP/1.1 200 \r\nContent-Type: text/xml;charset=UTF-8\r\
                          \nContent-Length: 444\r\nDate: Tue, 26 Nov 2024 23:43:27\
                          \ GMT"
                        mimeType: true
                        mimeTypeObj:
                          extensions:
                          - xml
                          isXML: true
                          isText: true
                          type: text/xml
                      writeRequestTime: true
                      requestTime: 1732664607869
                      writeResponseTime: true
                      responseTime: 1732664607914
                    seqKey:
                      keys:
                      - ""
                      - ""
                      - downPayment
                      - 1
                      - loanAmount
                      - 1000000
                      row:
                        refs:
                        - first: false
                          dataSourceName: loan_data
                          row: 2
                        first: false
                        last: false
                  - invocations:
                    - requestTimeNanos: 1088667568692700
                      responseTimeNanos: 1088667621013900
                      invKey:
                        description: http://18.237.146.177:8090/parabank/services/LoanProcessor
                        seqNum: 1
                      request: true
                      requestMessage:
                        contentEncoding: UTF-8
                        content: PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiPz48U09BUC1FTlY6RW52ZWxvcGUgeG1sbnM6U09BUC1FTlY9Imh0dHA6Ly9zY2hlbWFzLnhtbHNvYXAub3JnL3NvYXAvZW52ZWxvcGUvIiB4bWxuczp4c2Q9Imh0dHA6Ly93d3cudzMub3JnLzIwMDEvWE1MU2NoZW1hIiB4bWxuczp4c2k9Imh0dHA6Ly93d3cudzMub3JnLzIwMDEvWE1MU2NoZW1hLWluc3RhbmNlIj48U09BUC1FTlY6Qm9keT48cmVxdWVzdExvYW4geG1sbnM9Imh0dHA6Ly9zZXJ2aWNlLnBhcmFiYW5rLnBhcmFzb2Z0LmNvbS8iPjxsb2FuUmVxdWVzdD48cmVxdWVzdERhdGUgeG1sbnM9IiI+MjAyMy0wNy0yNFQyMzowODo0MS45NTFaPC9yZXF1ZXN0RGF0ZT48Y3VzdG9tZXJJZCB4bWxucz0iIj4xMjIxMjwvY3VzdG9tZXJJZD48YXZhaWxhYmxlRnVuZHMgeG1sbnM9IiI+MTM5Mi42NzwvYXZhaWxhYmxlRnVuZHM+PGxvYW5BbW91bnQgeG1sbnM9IiI+MTAwMDwvbG9hbkFtb3VudD48ZG93blBheW1lbnQgeG1sbnM9IiI+MTAwPC9kb3duUGF5bWVudD48L2xvYW5SZXF1ZXN0PjwvcmVxdWVzdExvYW4+PC9TT0FQLUVOVjpCb2R5PjwvU09BUC1FTlY6RW52ZWxvcGU+
                        endpoint: http://18.237.146.177:8090/parabank/services/LoanProcessor
                        type: 1
                        httpHeader: "POST /parabank/services/LoanProcessor HTTP/1.1\r\
                          \nHost: 18.237.146.177:8090\r\nContent-Type: text/xml; charset=UTF-8\r\
                          \nContent-Length: 591\r\nSOAPAction: \"\"\r\nAccept: */*\r\
                          \nUser-Agent: Apache-CXF/3.5.5\r\nCache-Control: no-cache\r\
                          \nPragma: no-cache"
                        mimeType: true
                        mimeTypeObj:
                          extensions:
                          - xml
                          isXML: true
                          isText: true
                          type: text/xml
                      response: true
                      responseMessage:
                        contentEncoding: UTF-8
                        content: PHNvYXA6RW52ZWxvcGUgeG1sbnM6c29hcD0iaHR0cDovL3NjaGVtYXMueG1sc29hcC5vcmcvc29hcC9lbnZlbG9wZS8iPjxzb2FwOkJvZHk+PG5zMjpyZXF1ZXN0TG9hblJlc3BvbnNlIHhtbG5zOm5zMj0iaHR0cDovL3NlcnZpY2UucGFyYWJhbmsucGFyYXNvZnQuY29tLyI+PG5zMjpsb2FuUmVzcG9uc2U+PHJlc3BvbnNlRGF0ZT4yMDI0LTExLTI2VDIzOjQzOjI3Ljc0MFo8L3Jlc3BvbnNlRGF0ZT48bG9hblByb3ZpZGVyTmFtZT5XZWFsdGggU2VjdXJpdGllcyBEeW5hbWljIExvYW5zIChXU0RMKTwvbG9hblByb3ZpZGVyTmFtZT48YXBwcm92ZWQ+dHJ1ZTwvYXBwcm92ZWQ+PC9uczI6bG9hblJlc3BvbnNlPjwvbnMyOnJlcXVlc3RMb2FuUmVzcG9uc2U+PC9zb2FwOkJvZHk+PC9zb2FwOkVudmVsb3BlPg==
                        endpoint: http://18.237.146.177:8090/parabank/services/LoanProcessor
                        type: 2
                        httpHeader: "HTTP/1.1 200 \r\nContent-Type: text/xml;charset=UTF-8\r\
                          \nContent-Length: 400\r\nDate: Tue, 26 Nov 2024 23:43:27\
                          \ GMT"
                        mimeType: true
                        mimeTypeObj:
                          extensions:
                          - xml
                          isXML: true
                          isText: true
                          type: text/xml
                      writeRequestTime: true
                      requestTime: 1732664607772
                      writeResponseTime: true
                      responseTime: 1732664607825
                    seqKey:
                      keys:
                      - ""
                      - ""
                      - downPayment
                      - 100
                      - loanAmount
                      - 1000
                      row:
                        refs:
                        - dataSourceName: loan_data
                          row: 1
                        last: false
                  testName: requestLoan (qa1.parasoft.com)
                  writeTimestamp: true
                  timestamp: 1732664607827
                - sequences:
                  - invocations:
                    - requestTimeNanos: 1088670245072500
                      responseTimeNanos: 1088670287721599
                      invKey:
                        description: http://18.237.146.177:8090/parabank/services/LoanProcessor
                        seqNum: 1
                      request: true
                      requestMessage:
                        contentEncoding: UTF-8
                        content: PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiPz48U09BUC1FTlY6RW52ZWxvcGUgeG1sbnM6U09BUC1FTlY9Imh0dHA6Ly9zY2hlbWFzLnhtbHNvYXAub3JnL3NvYXAvZW52ZWxvcGUvIiB4bWxuczp4c2Q9Imh0dHA6Ly93d3cudzMub3JnLzIwMDEvWE1MU2NoZW1hIiB4bWxuczp4c2k9Imh0dHA6Ly93d3cudzMub3JnLzIwMDEvWE1MU2NoZW1hLWluc3RhbmNlIj48U09BUC1FTlY6Qm9keT48cmVxdWVzdExvYW4geG1sbnM9Imh0dHA6Ly9zZXJ2aWNlLnBhcmFiYW5rLnBhcmFzb2Z0LmNvbS8iPjxsb2FuUmVxdWVzdD48cmVxdWVzdERhdGUgeG1sbnM9IiI+MjAyMy0wNy0yNFQyMzowODo0MS45NTFaPC9yZXF1ZXN0RGF0ZT48Y3VzdG9tZXJJZCB4bWxucz0iIj4xMjIxMjwvY3VzdG9tZXJJZD48YXZhaWxhYmxlRnVuZHMgeG1sbnM9IiI+MTM5Mi42NzwvYXZhaWxhYmxlRnVuZHM+PGxvYW5BbW91bnQgeG1sbnM9IiI+NTAwMDwvbG9hbkFtb3VudD48ZG93blBheW1lbnQgeG1sbnM9IiI+MTAwPC9kb3duUGF5bWVudD48L2xvYW5SZXF1ZXN0PjwvcmVxdWVzdExvYW4+PC9TT0FQLUVOVjpCb2R5PjwvU09BUC1FTlY6RW52ZWxvcGU+
                        endpoint: http://18.237.146.177:8090/parabank/services/LoanProcessor
                        type: 1
                        httpHeader: "POST /parabank/services/LoanProcessor HTTP/1.1\r\
                          \nHost: 18.237.146.177:8090\r\nContent-Type: text/xml; charset=UTF-8\r\
                          \nContent-Length: 591\r\nSOAPAction: \"\"\r\nAccept: */*\r\
                          \nUser-Agent: Apache-CXF/3.5.5\r\nCache-Control: no-cache\r\
                          \nPragma: no-cache"
                        mimeType: true
                        mimeTypeObj:
                          extensions:
                          - xml
                          isXML: true
                          isText: true
                          type: text/xml
                      response: true
                      responseMessage:
                        contentEncoding: UTF-8
                        content: PHNvYXA6RW52ZWxvcGUgeG1sbnM6c29hcD0iaHR0cDovL3NjaGVtYXMueG1sc29hcC5vcmcvc29hcC9lbnZlbG9wZS8iPjxzb2FwOkJvZHk+PG5zMjpyZXF1ZXN0TG9hblJlc3BvbnNlIHhtbG5zOm5zMj0iaHR0cDovL3NlcnZpY2UucGFyYWJhbmsucGFyYXNvZnQuY29tLyI+PG5zMjpsb2FuUmVzcG9uc2U+PHJlc3BvbnNlRGF0ZT4yMDI0LTExLTI2VDIzOjQzOjMwLjQxMlo8L3Jlc3BvbnNlRGF0ZT48bG9hblByb3ZpZGVyTmFtZT5XZWFsdGggU2VjdXJpdGllcyBEeW5hbWljIExvYW5zIChXU0RMKTwvbG9hblByb3ZpZGVyTmFtZT48YXBwcm92ZWQ+dHJ1ZTwvYXBwcm92ZWQ+PC9uczI6bG9hblJlc3BvbnNlPjwvbnMyOnJlcXVlc3RMb2FuUmVzcG9uc2U+PC9zb2FwOkJvZHk+PC9zb2FwOkVudmVsb3BlPg==
                        endpoint: http://18.237.146.177:8090/parabank/services/LoanProcessor
                        type: 2
                        httpHeader: "HTTP/1.1 200 \r\nContent-Type: text/xml;charset=UTF-8\r\
                          \nContent-Length: 400\r\nDate: Tue, 26 Nov 2024 23:43:30\
                          \ GMT"
                        mimeType: true
                        mimeTypeObj:
                          extensions:
                          - xml
                          isXML: true
                          isText: true
                          type: text/xml
                      writeRequestTime: true
                      requestTime: 1732664610447
                      writeResponseTime: true
                      responseTime: 1732664610491
                    seqKey:
                      keys:
                      - ""
                      - ""
                      - downPayment
                      - 100
                      - loanAmount
                      - 5000
                      row:
                        refs:
                        - first: false
                          last: true
                          dataSourceName: loan_data
                          row: 3
                        first: false
                  - invocations:
                    - requestTimeNanos: 1088670048917400
                      responseTimeNanos: 1088670096863500
                      invKey:
                        description: http://18.237.146.177:8090/parabank/services/LoanProcessor
                        seqNum: 1
                      request: true
                      requestMessage:
                        contentEncoding: UTF-8
                        content: PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiPz48U09BUC1FTlY6RW52ZWxvcGUgeG1sbnM6U09BUC1FTlY9Imh0dHA6Ly9zY2hlbWFzLnhtbHNvYXAub3JnL3NvYXAvZW52ZWxvcGUvIiB4bWxuczp4c2Q9Imh0dHA6Ly93d3cudzMub3JnLzIwMDEvWE1MU2NoZW1hIiB4bWxuczp4c2k9Imh0dHA6Ly93d3cudzMub3JnLzIwMDEvWE1MU2NoZW1hLWluc3RhbmNlIj48U09BUC1FTlY6Qm9keT48cmVxdWVzdExvYW4geG1sbnM9Imh0dHA6Ly9zZXJ2aWNlLnBhcmFiYW5rLnBhcmFzb2Z0LmNvbS8iPjxsb2FuUmVxdWVzdD48cmVxdWVzdERhdGUgeG1sbnM9IiI+MjAyMy0wNy0yNFQyMzowODo0MS45NTFaPC9yZXF1ZXN0RGF0ZT48Y3VzdG9tZXJJZCB4bWxucz0iIj4xMjIxMjwvY3VzdG9tZXJJZD48YXZhaWxhYmxlRnVuZHMgeG1sbnM9IiI+MTM5Mi42NzwvYXZhaWxhYmxlRnVuZHM+PGxvYW5BbW91bnQgeG1sbnM9IiI+MTAwMDAwMDwvbG9hbkFtb3VudD48ZG93blBheW1lbnQgeG1sbnM9IiI+MTwvZG93blBheW1lbnQ+PC9sb2FuUmVxdWVzdD48L3JlcXVlc3RMb2FuPjwvU09BUC1FTlY6Qm9keT48L1NPQVAtRU5WOkVudmVsb3BlPg==
                        endpoint: http://18.237.146.177:8090/parabank/services/LoanProcessor
                        type: 1
                        httpHeader: "POST /parabank/services/LoanProcessor HTTP/1.1\r\
                          \nHost: 18.237.146.177:8090\r\nContent-Type: text/xml; charset=UTF-8\r\
                          \nContent-Length: 592\r\nSOAPAction: \"\"\r\nAccept: */*\r\
                          \nUser-Agent: Apache-CXF/3.5.5\r\nCache-Control: no-cache\r\
                          \nPragma: no-cache"
                        mimeType: true
                        mimeTypeObj:
                          extensions:
                          - xml
                          isXML: true
                          isText: true
                          type: text/xml
                      response: true
                      responseMessage:
                        contentEncoding: UTF-8
                        content: PHNvYXA6RW52ZWxvcGUgeG1sbnM6c29hcD0iaHR0cDovL3NjaGVtYXMueG1sc29hcC5vcmcvc29hcC9lbnZlbG9wZS8iPjxzb2FwOkJvZHk+PG5zMjpyZXF1ZXN0TG9hblJlc3BvbnNlIHhtbG5zOm5zMj0iaHR0cDovL3NlcnZpY2UucGFyYWJhbmsucGFyYXNvZnQuY29tLyI+PG5zMjpsb2FuUmVzcG9uc2U+PHJlc3BvbnNlRGF0ZT4yMDI0LTExLTI2VDIzOjQzOjMwLjIxOFo8L3Jlc3BvbnNlRGF0ZT48bG9hblByb3ZpZGVyTmFtZT5XZWFsdGggU2VjdXJpdGllcyBEeW5hbWljIExvYW5zIChXU0RMKTwvbG9hblByb3ZpZGVyTmFtZT48YXBwcm92ZWQ+ZmFsc2U8L2FwcHJvdmVkPjxtZXNzYWdlPmVycm9yLmluc3VmZmljaWVudC5mdW5kczwvbWVzc2FnZT48L25zMjpsb2FuUmVzcG9uc2U+PC9uczI6cmVxdWVzdExvYW5SZXNwb25zZT48L3NvYXA6Qm9keT48L3NvYXA6RW52ZWxvcGU+
                        endpoint: http://18.237.146.177:8090/parabank/services/LoanProcessor
                        type: 2
                        httpHeader: "HTTP/1.1 200 \r\nContent-Type: text/xml;charset=UTF-8\r\
                          \nContent-Length: 444\r\nDate: Tue, 26 Nov 2024 23:43:30\
                          \ GMT"
                        mimeType: true
                        mimeTypeObj:
                          extensions:
                          - xml
                          isXML: true
                          isText: true
                          type: text/xml
                      writeRequestTime: true
                      requestTime: 1732664610252
                      writeResponseTime: true
                      responseTime: 1732664610300
                    seqKey:
                      keys:
                      - ""
                      - ""
                      - downPayment
                      - 1
                      - loanAmount
                      - 1000000
                      row:
                        refs:
                        - first: false
                          dataSourceName: loan_data
                          row: 2
                        first: false
                        last: false
                  - invocations:
                    - requestTimeNanos: 1088669677669399
                      responseTimeNanos: 1088669720978600
                      invKey:
                        description: http://18.237.146.177:8090/parabank/services/LoanProcessor
                        seqNum: 1
                      request: true
                      requestMessage:
                        contentEncoding: UTF-8
                        content: PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiPz48U09BUC1FTlY6RW52ZWxvcGUgeG1sbnM6U09BUC1FTlY9Imh0dHA6Ly9zY2hlbWFzLnhtbHNvYXAub3JnL3NvYXAvZW52ZWxvcGUvIiB4bWxuczp4c2Q9Imh0dHA6Ly93d3cudzMub3JnLzIwMDEvWE1MU2NoZW1hIiB4bWxuczp4c2k9Imh0dHA6Ly93d3cudzMub3JnLzIwMDEvWE1MU2NoZW1hLWluc3RhbmNlIj48U09BUC1FTlY6Qm9keT48cmVxdWVzdExvYW4geG1sbnM9Imh0dHA6Ly9zZXJ2aWNlLnBhcmFiYW5rLnBhcmFzb2Z0LmNvbS8iPjxsb2FuUmVxdWVzdD48cmVxdWVzdERhdGUgeG1sbnM9IiI+MjAyMy0wNy0yNFQyMzowODo0MS45NTFaPC9yZXF1ZXN0RGF0ZT48Y3VzdG9tZXJJZCB4bWxucz0iIj4xMjIxMjwvY3VzdG9tZXJJZD48YXZhaWxhYmxlRnVuZHMgeG1sbnM9IiI+MTM5Mi42NzwvYXZhaWxhYmxlRnVuZHM+PGxvYW5BbW91bnQgeG1sbnM9IiI+MTAwMDwvbG9hbkFtb3VudD48ZG93blBheW1lbnQgeG1sbnM9IiI+MTAwPC9kb3duUGF5bWVudD48L2xvYW5SZXF1ZXN0PjwvcmVxdWVzdExvYW4+PC9TT0FQLUVOVjpCb2R5PjwvU09BUC1FTlY6RW52ZWxvcGU+
                        endpoint: http://18.237.146.177:8090/parabank/services/LoanProcessor
                        type: 1
                        httpHeader: "POST /parabank/services/LoanProcessor HTTP/1.1\r\
                          \nHost: 18.237.146.177:8090\r\nContent-Type: text/xml; charset=UTF-8\r\
                          \nContent-Length: 591\r\nSOAPAction: \"\"\r\nAccept: */*\r\
                          \nUser-Agent: Apache-CXF/3.5.5\r\nCache-Control: no-cache\r\
                          \nPragma: no-cache"
                        mimeType: true
                        mimeTypeObj:
                          extensions:
                          - xml
                          isXML: true
                          isText: true
                          type: text/xml
                      response: true
                      responseMessage:
                        contentEncoding: UTF-8
                        content: PHNvYXA6RW52ZWxvcGUgeG1sbnM6c29hcD0iaHR0cDovL3NjaGVtYXMueG1sc29hcC5vcmcvc29hcC9lbnZlbG9wZS8iPjxzb2FwOkJvZHk+PG5zMjpyZXF1ZXN0TG9hblJlc3BvbnNlIHhtbG5zOm5zMj0iaHR0cDovL3NlcnZpY2UucGFyYWJhbmsucGFyYXNvZnQuY29tLyI+PG5zMjpsb2FuUmVzcG9uc2U+PHJlc3BvbnNlRGF0ZT4yMDI0LTExLTI2VDIzOjQzOjI5Ljg0NFo8L3Jlc3BvbnNlRGF0ZT48bG9hblByb3ZpZGVyTmFtZT5XZWFsdGggU2VjdXJpdGllcyBEeW5hbWljIExvYW5zIChXU0RMKTwvbG9hblByb3ZpZGVyTmFtZT48YXBwcm92ZWQ+dHJ1ZTwvYXBwcm92ZWQ+PC9uczI6bG9hblJlc3BvbnNlPjwvbnMyOnJlcXVlc3RMb2FuUmVzcG9uc2U+PC9zb2FwOkJvZHk+PC9zb2FwOkVudmVsb3BlPg==
                        endpoint: http://18.237.146.177:8090/parabank/services/LoanProcessor
                        type: 2
                        httpHeader: "HTTP/1.1 200 \r\nContent-Type: text/xml;charset=UTF-8\r\
                          \nContent-Length: 400\r\nDate: Tue, 26 Nov 2024 23:43:29\
                          \ GMT"
                        mimeType: true
                        mimeTypeObj:
                          extensions:
                          - xml
                          isXML: true
                          isText: true
                          type: text/xml
                      writeRequestTime: true
                      requestTime: 1732664609881
                      writeResponseTime: true
                      responseTime: 1732664609924
                    seqKey:
                      keys:
                      - ""
                      - ""
                      - downPayment
                      - 100
                      - loanAmount
                      - 1000
                      row:
                        refs:
                        - dataSourceName: loan_data
                          row: 1
                        last: false
                  testName: requestLoan (qa1.parasoft.com)
                  writeTimestamp: true
                  timestamp: 1732664609926
                - sequences:
                  - invocations:
                    - invKey:
                        seqNum: 1
                      request: true
                      requestMessage:
                        content: ""
                        type: 1
                        mimeType: true
                        mimeTypeObj:
                          type: content/unknown
                      response: true
                      responseMessage:
                        content: ""
                        type: 2
                        mimeType: true
                        mimeTypeObj:
                          type: content/unknown
                    seqKey:
                      keys:
                      - ""
                      - ""
                      - downPayment
                      - 100
                      - loanAmount
                      - 1000
                      row:
                        refs:
                        - dataSourceName: loan_data
                          row: 1
                        last: false
                  testName: requestLoan (v1)
                  writeTimestamp: true
                  timestamp: 1732664709038
                - sequences:
                  - invocations:
                    - requestTimeNanos: 1088771693109800
                      responseTimeNanos: 1088771738762100
                      invKey:
                        description: http://18.237.146.177:8090/parabank/services/LoanProcessor
                        seqNum: 1
                      request: true
                      requestMessage:
                        contentEncoding: UTF-8
                        content: PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiPz48U09BUC1FTlY6RW52ZWxvcGUgeG1sbnM6U09BUC1FTlY9Imh0dHA6Ly9zY2hlbWFzLnhtbHNvYXAub3JnL3NvYXAvZW52ZWxvcGUvIiB4bWxuczp4c2Q9Imh0dHA6Ly93d3cudzMub3JnLzIwMDEvWE1MU2NoZW1hIiB4bWxuczp4c2k9Imh0dHA6Ly93d3cudzMub3JnLzIwMDEvWE1MU2NoZW1hLWluc3RhbmNlIj48U09BUC1FTlY6Qm9keT48cmVxdWVzdExvYW4geG1sbnM9Imh0dHA6Ly9zZXJ2aWNlLnBhcmFiYW5rLnBhcmFzb2Z0LmNvbS8iPjxsb2FuUmVxdWVzdD48cmVxdWVzdERhdGUgeG1sbnM9IiI+MjAyMy0wNy0yNFQyMzowODo0MS45NTFaPC9yZXF1ZXN0RGF0ZT48Y3VzdG9tZXJJZCB4bWxucz0iIj4xMjIxMjwvY3VzdG9tZXJJZD48YXZhaWxhYmxlRnVuZHMgeG1sbnM9IiI+MTM5Mi42NzwvYXZhaWxhYmxlRnVuZHM+PGxvYW5BbW91bnQgeG1sbnM9IiI+NTAwMDwvbG9hbkFtb3VudD48ZG93blBheW1lbnQgeG1sbnM9IiI+MTAwPC9kb3duUGF5bWVudD48L2xvYW5SZXF1ZXN0PjwvcmVxdWVzdExvYW4+PC9TT0FQLUVOVjpCb2R5PjwvU09BUC1FTlY6RW52ZWxvcGU+
                        endpoint: http://18.237.146.177:8090/parabank/services/LoanProcessor
                        type: 1
                        httpHeader: "POST /parabank/services/LoanProcessor HTTP/1.1\r\
                          \nHost: 18.237.146.177:8090\r\nContent-Type: text/xml; charset=UTF-8\r\
                          \nContent-Length: 591\r\nSOAPAction: \"\"\r\nAccept: */*\r\
                          \nUser-Agent: Apache-CXF/3.5.5\r\nCache-Control: no-cache\r\
                          \nPragma: no-cache"
                        mimeType: true
                        mimeTypeObj:
                          extensions:
                          - xml
                          isXML: true
                          isText: true
                          type: text/xml
                      response: true
                      responseMessage:
                        contentEncoding: UTF-8
                        content: PHNvYXA6RW52ZWxvcGUgeG1sbnM6c29hcD0iaHR0cDovL3NjaGVtYXMueG1sc29hcC5vcmcvc29hcC9lbnZlbG9wZS8iPjxzb2FwOkJvZHk+PG5zMjpyZXF1ZXN0TG9hblJlc3BvbnNlIHhtbG5zOm5zMj0iaHR0cDovL3NlcnZpY2UucGFyYWJhbmsucGFyYXNvZnQuY29tLyI+PG5zMjpsb2FuUmVzcG9uc2U+PHJlc3BvbnNlRGF0ZT4yMDI0LTExLTI2VDIzOjQ1OjExLjg1OFo8L3Jlc3BvbnNlRGF0ZT48bG9hblByb3ZpZGVyTmFtZT5XZWFsdGggU2VjdXJpdGllcyBEeW5hbWljIExvYW5zIChXU0RMKTwvbG9hblByb3ZpZGVyTmFtZT48YXBwcm92ZWQ+dHJ1ZTwvYXBwcm92ZWQ+PC9uczI6bG9hblJlc3BvbnNlPjwvbnMyOnJlcXVlc3RMb2FuUmVzcG9uc2U+PC9zb2FwOkJvZHk+PC9zb2FwOkVudmVsb3BlPg==
                        endpoint: http://18.237.146.177:8090/parabank/services/LoanProcessor
                        type: 2
                        httpHeader: "HTTP/1.1 200 \r\nContent-Type: text/xml;charset=UTF-8\r\
                          \nContent-Length: 400\r\nDate: Tue, 26 Nov 2024 23:45:11\
                          \ GMT"
                        mimeType: true
                        mimeTypeObj:
                          extensions:
                          - xml
                          isXML: true
                          isText: true
                          type: text/xml
                      writeRequestTime: true
                      requestTime: 1732664711895
                      writeResponseTime: true
                      responseTime: 1732664711941
                    seqKey:
                      keys:
                      - ""
                      - ""
                      - downPayment
                      - 100
                      - loanAmount
                      - 5000
                      row:
                        refs:
                        - first: false
                          last: true
                          dataSourceName: loan_data
                          row: 3
                        first: false
                  - invocations:
                    - requestTimeNanos: 1088771502697099
                      responseTimeNanos: 1088771549505499
                      invKey:
                        description: http://18.237.146.177:8090/parabank/services/LoanProcessor
                        seqNum: 1
                      request: true
                      requestMessage:
                        contentEncoding: UTF-8
                        content: PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiPz48U09BUC1FTlY6RW52ZWxvcGUgeG1sbnM6U09BUC1FTlY9Imh0dHA6Ly9zY2hlbWFzLnhtbHNvYXAub3JnL3NvYXAvZW52ZWxvcGUvIiB4bWxuczp4c2Q9Imh0dHA6Ly93d3cudzMub3JnLzIwMDEvWE1MU2NoZW1hIiB4bWxuczp4c2k9Imh0dHA6Ly93d3cudzMub3JnLzIwMDEvWE1MU2NoZW1hLWluc3RhbmNlIj48U09BUC1FTlY6Qm9keT48cmVxdWVzdExvYW4geG1sbnM9Imh0dHA6Ly9zZXJ2aWNlLnBhcmFiYW5rLnBhcmFzb2Z0LmNvbS8iPjxsb2FuUmVxdWVzdD48cmVxdWVzdERhdGUgeG1sbnM9IiI+MjAyMy0wNy0yNFQyMzowODo0MS45NTFaPC9yZXF1ZXN0RGF0ZT48Y3VzdG9tZXJJZCB4bWxucz0iIj4xMjIxMjwvY3VzdG9tZXJJZD48YXZhaWxhYmxlRnVuZHMgeG1sbnM9IiI+MTM5Mi42NzwvYXZhaWxhYmxlRnVuZHM+PGxvYW5BbW91bnQgeG1sbnM9IiI+MTAwMDAwMDwvbG9hbkFtb3VudD48ZG93blBheW1lbnQgeG1sbnM9IiI+MTwvZG93blBheW1lbnQ+PC9sb2FuUmVxdWVzdD48L3JlcXVlc3RMb2FuPjwvU09BUC1FTlY6Qm9keT48L1NPQVAtRU5WOkVudmVsb3BlPg==
                        endpoint: http://18.237.146.177:8090/parabank/services/LoanProcessor
                        type: 1
                        httpHeader: "POST /parabank/services/LoanProcessor HTTP/1.1\r\
                          \nHost: 18.237.146.177:8090\r\nContent-Type: text/xml; charset=UTF-8\r\
                          \nContent-Length: 592\r\nSOAPAction: \"\"\r\nAccept: */*\r\
                          \nUser-Agent: Apache-CXF/3.5.5\r\nCache-Control: no-cache\r\
                          \nPragma: no-cache"
                        mimeType: true
                        mimeTypeObj:
                          extensions:
                          - xml
                          isXML: true
                          isText: true
                          type: text/xml
                      response: true
                      responseMessage:
                        contentEncoding: UTF-8
                        content: PHNvYXA6RW52ZWxvcGUgeG1sbnM6c29hcD0iaHR0cDovL3NjaGVtYXMueG1sc29hcC5vcmcvc29hcC9lbnZlbG9wZS8iPjxzb2FwOkJvZHk+PG5zMjpyZXF1ZXN0TG9hblJlc3BvbnNlIHhtbG5zOm5zMj0iaHR0cDovL3NlcnZpY2UucGFyYWJhbmsucGFyYXNvZnQuY29tLyI+PG5zMjpsb2FuUmVzcG9uc2U+PHJlc3BvbnNlRGF0ZT4yMDI0LTExLTI2VDIzOjQ1OjExLjY2OVo8L3Jlc3BvbnNlRGF0ZT48bG9hblByb3ZpZGVyTmFtZT5XZWFsdGggU2VjdXJpdGllcyBEeW5hbWljIExvYW5zIChXU0RMKTwvbG9hblByb3ZpZGVyTmFtZT48YXBwcm92ZWQ+ZmFsc2U8L2FwcHJvdmVkPjxtZXNzYWdlPmVycm9yLmluc3VmZmljaWVudC5mdW5kczwvbWVzc2FnZT48L25zMjpsb2FuUmVzcG9uc2U+PC9uczI6cmVxdWVzdExvYW5SZXNwb25zZT48L3NvYXA6Qm9keT48L3NvYXA6RW52ZWxvcGU+
                        endpoint: http://18.237.146.177:8090/parabank/services/LoanProcessor
                        type: 2
                        httpHeader: "HTTP/1.1 200 \r\nContent-Type: text/xml;charset=UTF-8\r\
                          \nContent-Length: 444\r\nDate: Tue, 26 Nov 2024 23:45:11\
                          \ GMT"
                        mimeType: true
                        mimeTypeObj:
                          extensions:
                          - xml
                          isXML: true
                          isText: true
                          type: text/xml
                      writeRequestTime: true
                      requestTime: 1732664711705
                      writeResponseTime: true
                      responseTime: 1732664711752
                    seqKey:
                      keys:
                      - ""
                      - ""
                      - downPayment
                      - 1
                      - loanAmount
                      - 1000000
                      row:
                        refs:
                        - first: false
                          dataSourceName: loan_data
                          row: 2
                        first: false
                        last: false
                  - invocations:
                    - requestTimeNanos: 1088771309580399
                      responseTimeNanos: 1088771354457699
                      invKey:
                        description: http://18.237.146.177:8090/parabank/services/LoanProcessor
                        seqNum: 1
                      request: true
                      requestMessage:
                        contentEncoding: UTF-8
                        content: PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiPz48U09BUC1FTlY6RW52ZWxvcGUgeG1sbnM6U09BUC1FTlY9Imh0dHA6Ly9zY2hlbWFzLnhtbHNvYXAub3JnL3NvYXAvZW52ZWxvcGUvIiB4bWxuczp4c2Q9Imh0dHA6Ly93d3cudzMub3JnLzIwMDEvWE1MU2NoZW1hIiB4bWxuczp4c2k9Imh0dHA6Ly93d3cudzMub3JnLzIwMDEvWE1MU2NoZW1hLWluc3RhbmNlIj48U09BUC1FTlY6Qm9keT48cmVxdWVzdExvYW4geG1sbnM9Imh0dHA6Ly9zZXJ2aWNlLnBhcmFiYW5rLnBhcmFzb2Z0LmNvbS8iPjxsb2FuUmVxdWVzdD48cmVxdWVzdERhdGUgeG1sbnM9IiI+MjAyMy0wNy0yNFQyMzowODo0MS45NTFaPC9yZXF1ZXN0RGF0ZT48Y3VzdG9tZXJJZCB4bWxucz0iIj4xMjIxMjwvY3VzdG9tZXJJZD48YXZhaWxhYmxlRnVuZHMgeG1sbnM9IiI+MTM5Mi42NzwvYXZhaWxhYmxlRnVuZHM+PGxvYW5BbW91bnQgeG1sbnM9IiI+MTAwMDwvbG9hbkFtb3VudD48ZG93blBheW1lbnQgeG1sbnM9IiI+MTAwPC9kb3duUGF5bWVudD48L2xvYW5SZXF1ZXN0PjwvcmVxdWVzdExvYW4+PC9TT0FQLUVOVjpCb2R5PjwvU09BUC1FTlY6RW52ZWxvcGU+
                        endpoint: http://18.237.146.177:8090/parabank/services/LoanProcessor
                        type: 1
                        httpHeader: "POST /parabank/services/LoanProcessor HTTP/1.1\r\
                          \nHost: 18.237.146.177:8090\r\nContent-Type: text/xml; charset=UTF-8\r\
                          \nContent-Length: 591\r\nSOAPAction: \"\"\r\nAccept: */*\r\
                          \nUser-Agent: Apache-CXF/3.5.5\r\nCache-Control: no-cache\r\
                          \nPragma: no-cache"
                        mimeType: true
                        mimeTypeObj:
                          extensions:
                          - xml
                          isXML: true
                          isText: true
                          type: text/xml
                      response: true
                      responseMessage:
                        contentEncoding: UTF-8
                        content: PHNvYXA6RW52ZWxvcGUgeG1sbnM6c29hcD0iaHR0cDovL3NjaGVtYXMueG1sc29hcC5vcmcvc29hcC9lbnZlbG9wZS8iPjxzb2FwOkJvZHk+PG5zMjpyZXF1ZXN0TG9hblJlc3BvbnNlIHhtbG5zOm5zMj0iaHR0cDovL3NlcnZpY2UucGFyYWJhbmsucGFyYXNvZnQuY29tLyI+PG5zMjpsb2FuUmVzcG9uc2U+PHJlc3BvbnNlRGF0ZT4yMDI0LTExLTI2VDIzOjQ1OjExLjQ3M1o8L3Jlc3BvbnNlRGF0ZT48bG9hblByb3ZpZGVyTmFtZT5XZWFsdGggU2VjdXJpdGllcyBEeW5hbWljIExvYW5zIChXU0RMKTwvbG9hblByb3ZpZGVyTmFtZT48YXBwcm92ZWQ+dHJ1ZTwvYXBwcm92ZWQ+PC9uczI6bG9hblJlc3BvbnNlPjwvbnMyOnJlcXVlc3RMb2FuUmVzcG9uc2U+PC9zb2FwOkJvZHk+PC9zb2FwOkVudmVsb3BlPg==
                        endpoint: http://18.237.146.177:8090/parabank/services/LoanProcessor
                        type: 2
                        httpHeader: "HTTP/1.1 200 \r\nContent-Type: text/xml;charset=UTF-8\r\
                          \nContent-Length: 400\r\nDate: Tue, 26 Nov 2024 23:45:11\
                          \ GMT"
                        mimeType: true
                        mimeTypeObj:
                          extensions:
                          - xml
                          isXML: true
                          isText: true
                          type: text/xml
                      writeRequestTime: true
                      requestTime: 1732664711512
                      writeResponseTime: true
                      responseTime: 1732664711557
                    seqKey:
                      keys:
                      - ""
                      - ""
                      - downPayment
                      - 100
                      - loanAmount
                      - 1000
                      row:
                        refs:
                        - dataSourceName: loan_data
                          row: 1
                        last: false
                  testName: requestLoan (v1)
                  writeTimestamp: true
                  timestamp: 1732664711559
                showRequestHeaders: true
                showResponseHeaders: true
              name: Traffic Object
          callContainer:
            transportProperties:
              manager:
                protocol: 1
                properties:
                - $type: SoapClientHTTPProperties
                  followRedirects:
                    bool: true
                  common:
                    method:
                      values:
                      - $type: ScriptedValue
                      fixedValue:
                        $type: HTTPMethodTestValue
                        method: POST
                    httpHeaders:
                      properties:
                      - name: content-type
                        value:
                          fixedValue:
                            $type: StringTestValue
                            value: text/xml; charset=UTF-8
                      - name: accept
                        value:
                          fixedValue:
                            $type: StringTestValue
                            value: '*/*'
                      - name: user-agent
                        value:
                          fixedValue:
                            $type: StringTestValue
                            value: Apache-CXF/3.5.5
                      - name: cache-control
                        value:
                          fixedValue:
                            $type: StringTestValue
                            value: no-cache
                      - name: pragma
                        value:
                          fixedValue:
                            $type: StringTestValue
                            value: no-cache
                  keepAlive1_1:
                    bool: true
                  soapAction:
                    sendSoapAction: true
                - $type: SoapClientHTTPProperties
                  followRedirects:
                    bool: true
                  common:
                    method:
                      values:
                      - $type: ScriptedValue
                      fixedValue:
                        $type: HTTPMethodTestValue
                        method: POST
                    httpHeaders:
                      properties:
                      - name: content-type
                        value:
                          fixedValue:
                            $type: StringTestValue
                            value: text/xml; charset=UTF-8
                      - name: accept
                        value:
                          fixedValue:
                            $type: StringTestValue
                            value: '*/*'
                      - name: user-agent
                        value:
                          fixedValue:
                            $type: StringTestValue
                            value: Apache-CXF/3.5.5
                      - name: cache-control
                        value:
                          fixedValue:
                            $type: StringTestValue
                            value: no-cache
                      - name: pragma
                        value:
                          fixedValue:
                            $type: StringTestValue
                            value: no-cache
                  protocol: 1
                  keepAlive1_1:
                    bool: true
                  soapAction:
                    sendSoapAction: true
                - $type: SoapClientWcfProperties
                  protocol: 7
                - $type: SoapClientWcfProperties
                  protocol: 8
                - $type: JNDIProperties
                  msgExpiration:
                    $type: JMSMessageExpiration
                  bytesMessageReadMethod:
                    string: readUTF()
                  responseCorrelation:
                    correlationId:
                      name: JMSCorrelationID
                      value:
                        values:
                        - $type: ScriptedValue
                        fixedValue:
                          $type: StringTestValue
                    messageSelector: ""
                  queueProperties:
                    jmsDestination:
                      name: JMSDestination
                      value:
                        values:
                        - $type: ScriptedValue
                        fixedValue:
                          $type: StringTestValue
                          value: JMS_RequestQueue
                    jmsReplyTo:
                      name: JMSReplyTo
                      value:
                        values:
                        - $type: ScriptedValue
                        fixedValue:
                          $type: StringTestValue
                          value: JMS_ResponseQueue
                  msgType:
                    string: javax.jms.TextMessage
                  useP2P:
                    bool: true
                  connProperties:
                    jmsFactory:
                      name: Connection Factory
                      value:
                        fixedValue:
                          $type: StringTestValue
                          value: MQ_JMS_MANAGER
                    jndiFactory:
                      name: Initial Context
                      value:
                        fixedValue:
                          $type: StringTestValue
                          value: com.sun.jndi.fscontext.RefFSContextFactory
                    providerURL:
                      name: Provider URL
                      value:
                        fixedValue:
                          $type: StringTestValue
                          value: file:/C:/JNDI-Directory
                    auth:
                      service:
                        name: Service
                        value:
                          fixedValue:
                            $type: StringTestValue
                      username:
                        name: Username
                        value:
                          fixedValue:
                            $type: StringTestValue
                      password:
                        name: Password
                        value:
                          fixedValue:
                            $type: PasswordTestValue
                  useSync: true
                - $type: SonicMQJNDIProperties
                  msgExpiration:
                    $type: JMSMessageExpiration
                  bytesMessageReadMethod:
                    string: readUTF()
                  responseCorrelation:
                    correlationId:
                      name: JMSCorrelationID
                      value:
                        values:
                        - $type: ScriptedValue
                        fixedValue:
                          $type: StringTestValue
                    messageSelector: ""
                  queueProperties:
                    jmsDestination:
                      name: JMSDestination
                      value:
                        values:
                        - $type: ScriptedValue
                        fixedValue:
                          $type: StringTestValue
                          value: JMS_RequestQueue
                    jmsReplyTo:
                      name: JMSReplyTo
                      value:
                        values:
                        - $type: ScriptedValue
                        fixedValue:
                          $type: StringTestValue
                          value: JMS_ResponseQueue
                  msgType:
                    string: progress.message.jclient.MultipartMessage
                  useP2P:
                    bool: true
                  connProperties:
                    initialContextProps:
                    - name: java.naming.security.credentials
                      value:
                        fixedValue:
                          $type: StringTestValue
                          value: Administrator
                    - name: java.naming.security.principal
                      value:
                        fixedValue:
                          $type: StringTestValue
                          value: Administrator
                    jmsFactory:
                      name: Connection Factory
                      value:
                        fixedValue:
                          $type: StringTestValue
                          value: ConnectionFactory
                    jndiFactory:
                      name: Initial Context
                      value:
                        fixedValue:
                          $type: StringTestValue
                          value: com.sonicsw.jndi.mfcontext.MFContextFactory
                    providerURL:
                      name: Provider URL
                      value:
                        fixedValue:
                          $type: StringTestValue
                          value: "tcp://[hostname]:2506"
                    auth:
                      service:
                        name: Service
                        value:
                          fixedValue:
                            $type: StringTestValue
                      username:
                        name: Username
                        value:
                          fixedValue:
                            $type: StringTestValue
                            value: Administrator
                      password:
                        name: Password
                        value:
                          fixedValue:
                            $type: PasswordTestValue
                  useSync: true
                  partContentID:
                    string: part1
                - $type: MQProperties
                  mqrfh2fields:
                    version:
                      name: Version
                      value:
                        fixedValue:
                          $type: StringTestValue
                    encoding:
                      name: Encoding
                      value:
                        fixedValue:
                          $type: StringTestValue
                    codedCharSetId:
                      name: CodedCharSetId
                      value:
                        fixedValue:
                          $type: StringTestValue
                    format:
                      name: Format
                      value:
                        fixedValue:
                          $type: StringTestValue
                    flags:
                      name: Flags
                      value:
                        fixedValue:
                          $type: StringTestValue
                    nameValueCodedCharSetId:
                      name: NameValueCodedCharSetId
                      value:
                        fixedValue:
                          $type: StringTestValue
                  mcd:
                    msd:
                      name: Message Service Domain
                      value:
                        fixedValue:
                          $type: StringTestValue
                    set:
                      name: Message Set
                      value:
                        fixedValue:
                          $type: StringTestValue
                    type:
                      name: Message Type
                      value:
                        fixedValue:
                          $type: StringTestValue
                    fmt:
                      name: Output Format
                      value:
                        fixedValue:
                          $type: StringTestValue
                  psc:
                    subIdentity:
                      name: SubIdentity
                      value:
                        fixedValue:
                          $type: StringTestValue
                    qName:
                      name: QName
                      value:
                        fixedValue:
                          $type: StringTestValue
                    qMgrName:
                      name: QMgrName
                      value:
                        fixedValue:
                          $type: StringTestValue
                    subPoint:
                      name: SubPoint
                      value:
                        fixedValue:
                          $type: StringTestValue
                    filter:
                      name: Filter
                      value:
                        fixedValue:
                          $type: StringTestValue
                    subName:
                      name: SubName
                      value:
                        fixedValue:
                          $type: StringTestValue
                    subUserData:
                      name: SubUserData
                      value:
                        fixedValue:
                          $type: StringTestValue
                  jms:
                    destination:
                      name: Destination
                      value:
                        fixedValue:
                          $type: StringTestValue
                    replyTo:
                      name: Reply To
                      value:
                        fixedValue:
                          $type: StringTestValue
                    timestamp:
                      name: Timestamp
                      value:
                        fixedValue:
                          $type: StringTestValue
                    expiration:
                      name: Expiration
                      value:
                        fixedValue:
                          $type: StringTestValue
                    correlationId:
                      name: Correlation Id
                      value:
                        fixedValue:
                          $type: StringTestValue
                    priority:
                      name: Priority
                      value:
                        fixedValue:
                          $type: StringTestValue
                    deliveryMode:
                      name: Delivery Mode
                      value:
                        fixedValue:
                          $type: StringTestValue
                  mqQueueManager:
                    ccsid:
                      name: CCSID
                      value:
                        fixedValue:
                          $type: StringTestValue
                  mqSSL:
                    peerName:
                      name: Peer Name
                      value:
                        fixedValue:
                          $type: StringTestValue
                    cipherSuite:
                      $type: EnumNameValuePair
                      name: CipherSuite
                      value:
                        fixedValue:
                          $type: StringTestValue
                  conn:
                    putManagerId:
                      name: Put Manager Id
                      value:
                        fixedValue:
                          $type: StringTestValue
                    getManagerId:
                      name: Get Manager Id
                      value:
                        fixedValue:
                          $type: StringTestValue
                    channel:
                      name: Channel
                      value:
                        fixedValue:
                          $type: StringTestValue
                          value: CHANNEL1
                    host:
                      name: Host
                      value:
                        fixedValue:
                          $type: StringTestValue
                          value: host
                    port:
                      name: Port
                      value:
                        fixedValue:
                          $type: StringTestValue
                          value: 1414
                    manager:
                      name: Queue Manager
                      value:
                        fixedValue:
                          $type: StringTestValue
                          value: queue.manager.1
                    putQueue:
                      name: Put Queue
                      value:
                        fixedValue:
                          $type: StringTestValue
                          value: PutQueue
                    getQueue:
                      name: Get Queue
                      value:
                        fixedValue:
                          $type: StringTestValue
                          value: GetQueue
                    messageID:
                      name: Message ID
                      value:
                        fixedValue:
                          $type: StringTestValue
                          value: Message ID
                    auth:
                      service:
                        name: Service
                        value:
                          fixedValue:
                            $type: StringTestValue
                      username:
                        name: Username
                        value:
                          fixedValue:
                            $type: StringTestValue
                      password:
                        name: Password
                        value:
                          fixedValue:
                            $type: PasswordTestValue
                  mqpmMisc:
                    applicationIdData:
                      name: Application ID data
                      value:
                        fixedValue:
                          $type: StringTestValue
                    correlationID:
                      name: Correlation ID
                      value:
                        fixedValue:
                          $type: StringTestValue
                    expiry:
                      name: Expiry (in tenths of a second)
                      value:
                        fixedValue:
                          $type: StringTestValue
                          value: -1
                    messageSequenceNumber:
                      name: Message sequence number
                      value:
                        fixedValue:
                          $type: StringTestValue
                    replyToQueueManagerName:
                      name: Reply queue manager name
                      value:
                        fixedValue:
                          $type: StringTestValue
                    replyToQueueName:
                      name: Reply queue name
                      value:
                        fixedValue:
                          $type: StringTestValue
                    putApplicationName:
                      name: Put application name
                      value:
                        fixedValue:
                          $type: StringTestValue
                    applicationOriginData:
                      name: Originating application data
                      value:
                        fixedValue:
                          $type: StringTestValue
                    userId:
                      name: User ID
                      value:
                        fixedValue:
                          $type: StringTestValue
                  mqgmMisc:
                    correlationID:
                      name: Correlation Id
                      value:
                        fixedValue:
                          $type: StringTestValue
                    waitInterval:
                      name: Wait Interval(in milliseconds)
                      value:
                        fixedValue:
                          $type: StringTestValue
                          value: -1
                - $type: RMIProperties
                  hostName:
                    name: Host
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: Host
                  portNumber:
                    name: Port
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: Port
                  bindingName:
                    name: Binding
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: Binding
                  remoteInterface:
                    name: Remote Interface
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: Remote Interface
                  methodName:
                    name: Method Name
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: Method Name
                - $type: SMTPConnectionProperties
                  port:
                    name: Port
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: 25
                  host:
                    name: SMTP Host
                    value:
                      fixedValue:
                        $type: StringTestValue
                  user:
                    name: Username
                    value:
                      fixedValue:
                        $type: StringTestValue
                  pass:
                    name: Password
                    value:
                      fixedValue:
                        $type: PasswordTestValue
                        password: AwAAAAA=
                  fromEmail:
                    name: From Email
                    value:
                      fixedValue:
                        $type: StringTestValue
                  toEmail:
                    name: To Email
                    value:
                      fixedValue:
                        $type: StringTestValue
                  subject:
                    name: Subject
                    value:
                      fixedValue:
                        $type: StringTestValue
                - $type: TIBCOProperties
                  timeLimit:
                    name: Time Limit
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: 0
                  service:
                    name: ""
                    value:
                      fixedValue:
                        $type: StringTestValue
                  network:
                    name: ""
                    value:
                      fixedValue:
                        $type: StringTestValue
                  daemon:
                    name: DAEMON
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: DAEMON
                  sendSubject:
                    name: Send Subject
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: Send Subject
                  replySubject:
                    name: Reply Field Name
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: Reply Field Name
                  sendFieldName:
                    name: Send Field Name
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: Send Field Name
                  replyFieldName:
                    name: Reply Field Name
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: Reply Field Name
                - $type: NoneTransportProperties
                - $type: CustomTransportProperties
                  selected: 0
                  configs:
                  - $type: CustomTransportConfigurationImpl
                    ConfigClassName: com.parasoft.soavirt.transport.mqtt.MqttTransport
                    values:
                      customValueMap:
                      - broker
                      - $type: MultiValueCustomValue
                      - clean
                      - $type: MultiValueCustomValue
                      - client_id
                      - $type: MultiValueCustomValue
                      - connection_timeout
                      - $type: MultiValueCustomValue
                      - keep_alive
                      - $type: MultiValueCustomValue
                      - keymanager_factory
                      - $type: MultiValueCustomValue
                      - keystore_file
                      - $type: MultiValueCustomValue
                      - keystore_password
                      - $type: MultiValueCustomValue
                      - keystore_type
                      - $type: MultiValueCustomValue
                      - log_level
                      - $type: MultiValueCustomValue
                      - lwt_qos
                      - $type: MultiValueCustomValue
                      - lwt_retained
                      - $type: MultiValueCustomValue
                      - lwt_topic
                      - $type: MultiValueCustomValue
                      - password
                      - $type: MultiValueCustomValue
                      - persist_dir
                      - $type: MultiValueCustomValue
                      - publish_qos
                      - $type: MultiValueCustomValue
                      - publish_retained
                      - $type: MultiValueCustomValue
                      - publish_topic
                      - $type: MultiValueCustomValue
                      - tls_protocol
                      - $type: MultiValueCustomValue
                      - trustmanager_factory
                      - $type: MultiValueCustomValue
                      - truststore_file
                      - $type: MultiValueCustomValue
                      - truststore_password
                      - $type: MultiValueCustomValue
                      - truststore_type
                      - $type: MultiValueCustomValue
                      - username
                      - $type: MultiValueCustomValue
                      - will
                      - $type: MultiValueCustomValue
                    className: com.parasoft.soavirt.transport.mqtt.MqttTransport
                    name: MQTT
              messageExchangePattern:
                inverted: true
            soapCall: true
            soapCallObj:
              soapMethod: true
              soapMethodObj:
                soapParameters:
                - value:
                    $type: ElementValue
                    writeType: true
                    type:
                      $type: ElementType
                      hash: 1
                      namespace: http://service.parabank.parasoft.com/
                      localName: requestLoan
                      bodyType:
                        $type: ComplexType
                        hash: 2
                        namespace: http://service.parabank.parasoft.com/
                        name: requestLoan
                        compositor: true
                        compositorObj:
                          $type: SequenceCompositor
                          hash: 3
                          types:
                          - $type: ElementType
                            hash: 4
                            namespace: http://service.parabank.parasoft.com/
                            localName: loanRequest
                            bodyType:
                              $type: ComplexType
                              hash: 5
                              namespace: http://service.parabank.parasoft.com/
                              name: loanRequest
                              compositor: true
                              compositorObj:
                                $type: SequenceCompositor
                                hash: 6
                                types:
                                - $type: ElementType
                                  hash: 7
                                  minOccurs: 0
                                  localName: requestDate
                                  bodyType:
                                    $type: DateTimeType
                                    hash: 8
                                - $type: ElementType
                                  hash: 9
                                  localName: customerId
                                  bodyType:
                                    $type: IntegerType
                                    hash: 10
                                - $type: ElementType
                                  hash: 11
                                  localName: availableFunds
                                  bodyType:
                                    $type: DecimalType
                                    hash: 12
                                - $type: ElementType
                                  hash: 13
                                  localName: loanAmount
                                  bodyType:
                                    $type: DecimalType
                                    hash: 12
                                - $type: ElementType
                                  hash: 14
                                  localName: downPayment
                                  bodyType:
                                    $type: DecimalType
                                    hash: 12
                    replacedColumn: ""
                    values:
                    - $type: ComplexValue
                      replacedColumn: ""
                      compositorValue: true
                      compositorValueObj:
                        replacedColumn: ""
                        values:
                          $type: CompositorValueSetCollectionSet
                          set:
                          - $type: CompositorValueSet
                            values:
                            - $type: ElementValue
                              replacedColumn: ""
                              values:
                              - $type: ComplexValue
                                replacedColumn: ""
                                compositorValue: true
                                compositorValueObj:
                                  replacedColumn: ""
                                  values:
                                    $type: CompositorValueSetCollectionSet
                                    set:
                                    - $type: CompositorValueSet
                                      values:
                                      - $type: ElementValue
                                        replacedColumn: ""
                                        values:
                                        - $type: DateTimeValue
                                          replacedColumn: ""
                                          allowArrayExclude: true
                                          value: 2023-07-24T23:08:41.951Z
                                          customFormat: ""
                                      - $type: ElementValue
                                        replacedColumn: ""
                                        values:
                                        - $type: IntegerValue
                                          replacedColumn: ""
                                          validate: false
                                          value: 12212
                                      - $type: ElementValue
                                        replacedColumn: ""
                                        values:
                                        - $type: DecimalValue
                                          replacedColumn: ""
                                          validate: false
                                          value: 1392.67
                                      - $type: ElementValue
                                        replacedColumn: ""
                                        values:
                                        - $type: DecimalValue
                                          replacedColumn: ""
                                          validate: false
                                          mode: 3
                                          columnName: loanAmount
                                          value: 5000
                                      - $type: ElementValue
                                        replacedColumn: ""
                                        values:
                                        - $type: DecimalValue
                                          replacedColumn: ""
                                          validate: false
                                          mode: 3
                                          columnName: downPayment
                                          value: 100
                  name: parameters
                beautify: false
                longName: requestLoan
                styleUseProperties:
                  targetObjectURI: http://service.parabank.parasoft.com/
                  encodingStyleURI: null
                serviceAddress:
                  $type: SOAPServiceAddress
                  portName: LoanProcessorServiceImplPort
                  address: http://18.237.146.177:8090/parabank/services/LoanProcessor
                returnParam: true
                returnParamObj:
                  value:
                    $type: ElementValue
                    writeType: true
                    type:
                      $type: ElementType
                      hash: 1
                      namespace: http://service.parabank.parasoft.com/
                      localName: requestLoanResponse
                      bodyType:
                        $type: ComplexType
                        hash: 2
                        namespace: http://service.parabank.parasoft.com/
                        name: requestLoanResponse
                        compositor: true
                        compositorObj:
                          $type: SequenceCompositor
                          hash: 3
                          types:
                          - $type: ElementType
                            hash: 4
                            namespace: http://service.parabank.parasoft.com/
                            localName: loanResponse
                            bodyType:
                              $type: ComplexType
                              hash: 5
                              namespace: http://service.parabank.parasoft.com/
                              name: loanResponse
                              compositor: true
                              compositorObj:
                                $type: SequenceCompositor
                                hash: 6
                                types:
                                - $type: ElementType
                                  hash: 7
                                  minOccurs: 0
                                  localName: responseDate
                                  bodyType:
                                    $type: DateTimeType
                                    hash: 8
                                - $type: ElementType
                                  hash: 9
                                  localName: loanProviderName
                                  bodyType:
                                    $type: StringType
                                    hash: 10
                                - $type: ElementType
                                  hash: 11
                                  localName: approved
                                  bodyType:
                                    $type: BooleanType
                                    hash: 12
                                - $type: ElementType
                                  hash: 13
                                  minOccurs: 0
                                  localName: message
                                  bodyType:
                                    $type: StringType
                                    hash: 10
                                - $type: ElementType
                                  hash: 14
                                  minOccurs: 0
                                  localName: accountId
                                  bodyType:
                                    $type: IntegerType
                                    hash: 15
                    replacedColumn: ""
                    values:
                    - $type: ComplexValue
                      replacedColumn: ""
                      compositorValue: true
                      compositorValueObj:
                        replacedColumn: ""
                        values:
                          $type: CompositorValueSetCollectionSet
                          set:
                          - $type: CompositorValueSet
                            values:
                            - $type: ElementValue
                              replacedColumn: ""
                              values:
                              - $type: ComplexValue
                                replacedColumn: ""
                                compositorValue: true
                                compositorValueObj:
                                  replacedColumn: ""
                                  values:
                                    $type: CompositorValueSetCollectionSet
                                    set:
                                    - $type: CompositorValueSet
                                      values:
                                      - $type: ElementValue
                                        replacedColumn: ""
                                      - $type: ElementValue
                                        replacedColumn: ""
                                        values:
                                        - $type: StringValue
                                          replacedColumn: ""
                                          value: ""
                                      - $type: ElementValue
                                        replacedColumn: ""
                                        values:
                                        - $type: BooleanValue
                                          replacedColumn: ""
                                          value: "true"
                                      - $type: ElementValue
                                        replacedColumn: ""
                                      - $type: ElementValue
                                        replacedColumn: ""
                  name: parameters
                methodName: requestLoan
                returnType: "{http://service.parabank.parasoft.com/}requestLoanResponse"
              inputMode: 1
              inputUsable: true
              literal:
                use: 1
                text:
                  SOAPClient_LiteralMessage: |-
                    <?xml version="1.0" encoding="UTF-8"?>
                    <soap:Envelope xmlns:soap="http://schemas.xmlsoap.org/soap/envelope/">
                     <soap:Body>
                      <ns2:requestLoan xmlns:ns2="http://service.parabank.parasoft.com/">
                       <ns2:loanRequest>
                        <requestDate xmlns="">2023-07-24T22:27:03.030Z</requestDate>
                        <customerId xmlns="">12212</customerId>
                        <availableFunds xmlns="">1392.67</availableFunds>
                        <loanAmount xmlns="">1000000</loanAmount>
                        <downPayment xmlns="">1</downPayment>
                       </ns2:loanRequest>
                      </ns2:requestLoan>
                     </soap:Body>
                    </soap:Envelope>
                  type: text/xml
              userMethod: true
              xmlBuilder: true
              formXML:
                rootNodeExists: true
                rootNode:
                  $type: XMLElementNode
                  value: ""
                  name: Envelope
                  namespace: true
                  prefix: soap
                  uri: http://schemas.xmlsoap.org/soap/envelope/
                  childNodes:
                  - $type: XMLNamespaceNode
                    prefix: soap
                    uri: http://schemas.xmlsoap.org/soap/envelope/
                  - $type: XMLElementNode
                    value: ""
                    name: Body
                    namespace: true
                    prefix: soap
                    uri: http://schemas.xmlsoap.org/soap/envelope/
                    childNodes:
                    - $type: XMLElementNode
                      value: ""
                      name: requestLoan
                      namespace: true
                      prefix: ns2
                      uri: http://service.parabank.parasoft.com/
                      childNodes:
                      - $type: XMLNamespaceNode
                        prefix: ns2
                        uri: http://service.parabank.parasoft.com/
                      - $type: XMLElementNode
                        excludeColumnName: "Accounts: accountBalance"
                        value: ""
                        name: loanRequest
                        namespace: true
                        prefix: ns2
                        uri: http://service.parabank.parasoft.com/
                        childNodes:
                        - $type: XMLElementNode
                          value: 2023-07-24T22:27:03.030Z
                          name: requestDate
                          childNodes:
                          - $type: XMLNamespaceNode
                            prefix: ""
                            uri: ""
                        - $type: XMLElementNode
                          value: 12212
                          name: customerId
                          childNodes:
                          - $type: XMLNamespaceNode
                            prefix: ""
                            uri: ""
                        - $type: XMLElementNode
                          value: 1392.67
                          name: availableFunds
                          childNodes:
                          - $type: XMLNamespaceNode
                            prefix: ""
                            uri: ""
                        - $type: XMLElementNode
                          value: 1000000
                          name: loanAmount
                          childNodes:
                          - $type: XMLNamespaceNode
                            prefix: ""
                            uri: ""
                        - $type: XMLElementNode
                          value: 1
                          name: downPayment
                          childNodes:
                          - $type: XMLNamespaceNode
                            prefix: ""
                            uri: ""
          responseFormat: 2
          mimeType: text/plain
      - $type: SOAPRPCToolTest
        testLogic: true
        testID: 766
        enabled: true
        name: requestLoan (qa1.parasoft.com) 2
        performanceGroup: 0
        tool:
          $type: SOAPRPCTool
          dataSourceNames:
          - loan_data
          iconName: SOAPClient
          name: requestLoan (v2)
          hasServiceInfo: true
          serviceInfo:
            serviceDescriptor:
              $type: StandardServiceDescriptor
              location: http://18.237.146.17:8091/parabank/services/LoanProcessor?wsdl
          soapResponse:
            $type: SOAPOutputProviderImpl
            outputTools:
            - $type: DiffTool
              dataSourceNames:
              - loan_data
              iconName: Diff
              name: Diff
              differs:
              - $type: BinaryDiffer
                source:
                  optionsSource: 1
              - $type: TextDiffer
              - $type: XMLDifferNew
                formXml:
                  formXML:
                    rootNodeExists: true
                    rootNode:
                      $type: XMLElementNode
                      value: ""
                      name: NewElement
                      showAttributes: true
                hasSoapControlSource: true
                soapControlSource:
                  $type: SoapDiffControlSource
              - $type: JSONDiffer
              source:
                optionsSource: 3
                dataSourceColumn: "Test 1: Envelope"
              mode: 2
          endpointAlternative: ""
          operationAlternative: ""
          messageAlternative: ""
          wsdlProperties:
            wsdlURL:
              SOAPClient_WSDLLocation: "http://${SV_HOST}:8091/parabank/services/LoanProcessor?wsdl"
          endpointProperties:
            defaultEndpoint:
              $type: DefaultEndpointType
            uddiEndpoint:
              $type: UDDIEndpointType
              uddiEndpoint:
                SOAPClient_UDDIServiceKey: ""
            customEndpoint:
              $type: CustomEndpointType
              customEndpoint:
                SOAPClient_CustomEndpoint: "http://${SV_HOST}:8091/parabank/services/LoanProcessor"
            wsdlEndpoint:
              $type: WsdlEndpointType
              wsdlEndpoint:
                value: http://18.237.146.177:8091/parabank/services/LoanProcessor
            mode: 2
          mimeOutputProvider:
            $type: MIMEOutputProvider
            attachmentOutputProvider:
              menuName: Attachment
              name: Response Attachment
          outputProviders:
            requestHeader:
              $type: HTTPNamedToolOutputProvider
              menuName: Transport Header
              name: Request Transport Header
            responseHeader:
              $type: HTTPNamedToolOutputProvider
              menuName: Transport Header
              name: Response Transport Header
            xmlRequestOutput:
              $type: NamedXMLToolOutputProvider
              menuName: SOAP Envelope
              name: Request SOAP Envelope
            trafficOutput:
              m_name: Traffic Stream
            objectOutput:
              $type: ObjectOutputProvider
              outputTools:
              - $type: TrafficViewer
                iconName: TrafficViewer
                name: Traffic Viewer
                saveTraffic: true
                testRuns:
                - sequences:
                  - invocations:
                    - requestTimeNanos: 404691207282700
                      responseTimeNanos: 404691213815600
                      invKey:
                        description: http://dev1.parasoft.com:8091/parabank/services/LoanProcessor
                        seqNum: 1
                      request: true
                      requestMessage:
                        contentEncoding: UTF-8
                        content: PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiPz48U09BUC1FTlY6RW52ZWxvcGUgeG1sbnM6U09BUC1FTlY9Imh0dHA6Ly9zY2hlbWFzLnhtbHNvYXAub3JnL3NvYXAvZW52ZWxvcGUvIiB4bWxuczp4c2Q9Imh0dHA6Ly93d3cudzMub3JnLzIwMDEvWE1MU2NoZW1hIiB4bWxuczp4c2k9Imh0dHA6Ly93d3cudzMub3JnLzIwMDEvWE1MU2NoZW1hLWluc3RhbmNlIj48U09BUC1FTlY6Qm9keT48cmVxdWVzdExvYW4geG1sbnM9Imh0dHA6Ly9zZXJ2aWNlLnBhcmFiYW5rLnBhcmFzb2Z0LmNvbS8iPjxsb2FuUmVxdWVzdD48cmVxdWVzdERhdGUgeG1sbnM9IiI+MjAyMy0wNy0yNFQyMzowODo0MS45NTFaPC9yZXF1ZXN0RGF0ZT48Y3VzdG9tZXJJZCB4bWxucz0iIj4xMjIxMjwvY3VzdG9tZXJJZD48YXZhaWxhYmxlRnVuZHMgeG1sbnM9IiI+MTM5Mi42NzwvYXZhaWxhYmxlRnVuZHM+PGxvYW5BbW91bnQgeG1sbnM9IiI+NTAwMDwvbG9hbkFtb3VudD48ZG93blBheW1lbnQgeG1sbnM9IiI+MTAwPC9kb3duUGF5bWVudD48L2xvYW5SZXF1ZXN0PjwvcmVxdWVzdExvYW4+PC9TT0FQLUVOVjpCb2R5PjwvU09BUC1FTlY6RW52ZWxvcGU+
                        endpoint: http://dev1.parasoft.com:8091/parabank/services/LoanProcessor
                        type: 1
                        httpHeader: "POST /parabank/services/LoanProcessor HTTP/1.1\r\
                          \nHost: dev1.parasoft.com:8091\r\nContent-Type: text/xml;\
                          \ charset=UTF-8\r\nContent-Length: 591\r\nSOAPAction: \"\
                          \"\r\nAccept: */*\r\nUser-Agent: Apache-CXF/3.5.5\r\nCache-Control:\
                          \ no-cache\r\nPragma: no-cache"
                        mimeType: true
                        mimeTypeObj:
                          extensions:
                          - xml
                          isXML: true
                          isText: true
                          type: text/xml
                      response: true
                      responseMessage:
                        contentEncoding: UTF-8
                        content: PHNvYXA6RW52ZWxvcGUgeG1sbnM6c29hcD0iaHR0cDovL3NjaGVtYXMueG1sc29hcC5vcmcvc29hcC9lbnZlbG9wZS8iPjxzb2FwOkJvZHk+PG5zMjpyZXF1ZXN0TG9hblJlc3BvbnNlIHhtbG5zOm5zMj0iaHR0cDovL3NlcnZpY2UucGFyYWJhbmsucGFyYXNvZnQuY29tLyI+PG5zMjpsb2FuUmVzcG9uc2U+PHJlc3BvbnNlRGF0ZT4yMDIzLTA3LTI1VDIwOjAzOjI4Ljk5N1o8L3Jlc3BvbnNlRGF0ZT48bG9hblByb3ZpZGVyTmFtZT5XZWFsdGggU2VjdXJpdGllcyBEeW5hbWljIExvYW5zIChXU0RMKTwvbG9hblByb3ZpZGVyTmFtZT48YXBwcm92ZWQ+dHJ1ZTwvYXBwcm92ZWQ+PC9uczI6bG9hblJlc3BvbnNlPjwvbnMyOnJlcXVlc3RMb2FuUmVzcG9uc2U+PC9zb2FwOkJvZHk+PC9zb2FwOkVudmVsb3BlPg==
                        endpoint: http://dev1.parasoft.com:8091/parabank/services/LoanProcessor
                        type: 2
                        httpHeader: "HTTP/1.1 200 \r\nContent-Type: text/xml;charset=UTF-8\r\
                          \nContent-Length: 400\r\nDate: Tue, 25 Jul 2023 20:03:28\
                          \ GMT"
                        mimeType: true
                        mimeTypeObj:
                          extensions:
                          - xml
                          isXML: true
                          isText: true
                          type: text/xml
                      writeRequestTime: true
                      requestTime: 1690315408993
                      writeResponseTime: true
                      responseTime: 1690315408999
                    seqKey:
                      keys:
                      - ""
                      - ""
                      - "Test 1: Envelope"
                      - <soap:Envelope xmlns:soap="http://schemas.xmlsoap.org/soap/envelope/"><soap:Body><ns2:requestLoanResponse
                        xmlns:ns2="http://service.parabank.parasoft.com/"><ns2:loanResponse><responseDate>2023-07-25T20:03:28.982Z</responseDate><loanProviderName>Wealth
                        Securities Dynamic Loans (WSDL)</loanProviderName><approved>true</approved></ns2:loanResponse></ns2:requestLoanResponse></soap:Body></soap:Envelope>
                      - downPayment
                      - 100
                      - loanAmount
                      - 5000
                      row:
                        refs:
                        - first: false
                          last: true
                          dataSourceName: loan_data
                          row: 3
                        first: false
                  - invocations:
                    - requestTimeNanos: 404691160326000
                      responseTimeNanos: 404691167448200
                      invKey:
                        description: http://dev1.parasoft.com:8091/parabank/services/LoanProcessor
                        seqNum: 1
                      request: true
                      requestMessage:
                        contentEncoding: UTF-8
                        content: PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiPz48U09BUC1FTlY6RW52ZWxvcGUgeG1sbnM6U09BUC1FTlY9Imh0dHA6Ly9zY2hlbWFzLnhtbHNvYXAub3JnL3NvYXAvZW52ZWxvcGUvIiB4bWxuczp4c2Q9Imh0dHA6Ly93d3cudzMub3JnLzIwMDEvWE1MU2NoZW1hIiB4bWxuczp4c2k9Imh0dHA6Ly93d3cudzMub3JnLzIwMDEvWE1MU2NoZW1hLWluc3RhbmNlIj48U09BUC1FTlY6Qm9keT48cmVxdWVzdExvYW4geG1sbnM9Imh0dHA6Ly9zZXJ2aWNlLnBhcmFiYW5rLnBhcmFzb2Z0LmNvbS8iPjxsb2FuUmVxdWVzdD48cmVxdWVzdERhdGUgeG1sbnM9IiI+MjAyMy0wNy0yNFQyMzowODo0MS45NTFaPC9yZXF1ZXN0RGF0ZT48Y3VzdG9tZXJJZCB4bWxucz0iIj4xMjIxMjwvY3VzdG9tZXJJZD48YXZhaWxhYmxlRnVuZHMgeG1sbnM9IiI+MTM5Mi42NzwvYXZhaWxhYmxlRnVuZHM+PGxvYW5BbW91bnQgeG1sbnM9IiI+MTAwMDAwMDwvbG9hbkFtb3VudD48ZG93blBheW1lbnQgeG1sbnM9IiI+MTwvZG93blBheW1lbnQ+PC9sb2FuUmVxdWVzdD48L3JlcXVlc3RMb2FuPjwvU09BUC1FTlY6Qm9keT48L1NPQVAtRU5WOkVudmVsb3BlPg==
                        endpoint: http://dev1.parasoft.com:8091/parabank/services/LoanProcessor
                        type: 1
                        httpHeader: "POST /parabank/services/LoanProcessor HTTP/1.1\r\
                          \nHost: dev1.parasoft.com:8091\r\nContent-Type: text/xml;\
                          \ charset=UTF-8\r\nContent-Length: 592\r\nSOAPAction: \"\
                          \"\r\nAccept: */*\r\nUser-Agent: Apache-CXF/3.5.5\r\nCache-Control:\
                          \ no-cache\r\nPragma: no-cache"
                        mimeType: true
                        mimeTypeObj:
                          extensions:
                          - xml
                          isXML: true
                          isText: true
                          type: text/xml
                      response: true
                      responseMessage:
                        contentEncoding: UTF-8
                        content: PHNvYXA6RW52ZWxvcGUgeG1sbnM6c29hcD0iaHR0cDovL3NjaGVtYXMueG1sc29hcC5vcmcvc29hcC9lbnZlbG9wZS8iPjxzb2FwOkJvZHk+PG5zMjpyZXF1ZXN0TG9hblJlc3BvbnNlIHhtbG5zOm5zMj0iaHR0cDovL3NlcnZpY2UucGFyYWJhbmsucGFyYXNvZnQuY29tLyI+PG5zMjpsb2FuUmVzcG9uc2U+PHJlc3BvbnNlRGF0ZT4yMDIzLTA3LTI1VDIwOjAzOjI4Ljk1MFo8L3Jlc3BvbnNlRGF0ZT48bG9hblByb3ZpZGVyTmFtZT5XZWFsdGggU2VjdXJpdGllcyBEeW5hbWljIExvYW5zIChXU0RMKTwvbG9hblByb3ZpZGVyTmFtZT48YXBwcm92ZWQ+ZmFsc2U8L2FwcHJvdmVkPjxtZXNzYWdlPmVycm9yLmluc3VmZmljaWVudC5mdW5kczwvbWVzc2FnZT48L25zMjpsb2FuUmVzcG9uc2U+PC9uczI6cmVxdWVzdExvYW5SZXNwb25zZT48L3NvYXA6Qm9keT48L3NvYXA6RW52ZWxvcGU+
                        endpoint: http://dev1.parasoft.com:8091/parabank/services/LoanProcessor
                        type: 2
                        httpHeader: "HTTP/1.1 200 \r\nContent-Type: text/xml;charset=UTF-8\r\
                          \nContent-Length: 444\r\nDate: Tue, 25 Jul 2023 20:03:28\
                          \ GMT"
                        mimeType: true
                        mimeTypeObj:
                          extensions:
                          - xml
                          isXML: true
                          isText: true
                          type: text/xml
                      writeRequestTime: true
                      requestTime: 1690315408946
                      writeResponseTime: true
                      responseTime: 1690315408953
                    seqKey:
                      keys:
                      - ""
                      - ""
                      - "Test 1: Envelope"
                      - <soap:Envelope xmlns:soap="http://schemas.xmlsoap.org/soap/envelope/"><soap:Body><ns2:requestLoanResponse
                        xmlns:ns2="http://service.parabank.parasoft.com/"><ns2:loanResponse><responseDate>2023-07-25T20:03:28.937Z</responseDate><loanProviderName>Wealth
                        Securities Dynamic Loans (WSDL)</loanProviderName><approved>false</approved><message>error.insufficient.funds</message></ns2:loanResponse></ns2:requestLoanResponse></soap:Body></soap:Envelope>
                      - downPayment
                      - 1
                      - loanAmount
                      - 1000000
                      row:
                        refs:
                        - first: false
                          dataSourceName: loan_data
                          row: 2
                        first: false
                        last: false
                  - invocations:
                    - requestTimeNanos: 404691094020400
                      responseTimeNanos: 404691106983700
                      invKey:
                        description: http://dev1.parasoft.com:8091/parabank/services/LoanProcessor
                        seqNum: 1
                      request: true
                      requestMessage:
                        contentEncoding: UTF-8
                        content: PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiPz48U09BUC1FTlY6RW52ZWxvcGUgeG1sbnM6U09BUC1FTlY9Imh0dHA6Ly9zY2hlbWFzLnhtbHNvYXAub3JnL3NvYXAvZW52ZWxvcGUvIiB4bWxuczp4c2Q9Imh0dHA6Ly93d3cudzMub3JnLzIwMDEvWE1MU2NoZW1hIiB4bWxuczp4c2k9Imh0dHA6Ly93d3cudzMub3JnLzIwMDEvWE1MU2NoZW1hLWluc3RhbmNlIj48U09BUC1FTlY6Qm9keT48cmVxdWVzdExvYW4geG1sbnM9Imh0dHA6Ly9zZXJ2aWNlLnBhcmFiYW5rLnBhcmFzb2Z0LmNvbS8iPjxsb2FuUmVxdWVzdD48cmVxdWVzdERhdGUgeG1sbnM9IiI+MjAyMy0wNy0yNFQyMzowODo0MS45NTFaPC9yZXF1ZXN0RGF0ZT48Y3VzdG9tZXJJZCB4bWxucz0iIj4xMjIxMjwvY3VzdG9tZXJJZD48YXZhaWxhYmxlRnVuZHMgeG1sbnM9IiI+MTM5Mi42NzwvYXZhaWxhYmxlRnVuZHM+PGxvYW5BbW91bnQgeG1sbnM9IiI+MTAwMDwvbG9hbkFtb3VudD48ZG93blBheW1lbnQgeG1sbnM9IiI+MTAwPC9kb3duUGF5bWVudD48L2xvYW5SZXF1ZXN0PjwvcmVxdWVzdExvYW4+PC9TT0FQLUVOVjpCb2R5PjwvU09BUC1FTlY6RW52ZWxvcGU+
                        endpoint: http://dev1.parasoft.com:8091/parabank/services/LoanProcessor
                        type: 1
                        httpHeader: "POST /parabank/services/LoanProcessor HTTP/1.1\r\
                          \nHost: dev1.parasoft.com:8091\r\nContent-Type: text/xml;\
                          \ charset=UTF-8\r\nContent-Length: 591\r\nSOAPAction: \"\
                          \"\r\nAccept: */*\r\nUser-Agent: Apache-CXF/3.5.5\r\nCache-Control:\
                          \ no-cache\r\nPragma: no-cache"
                        mimeType: true
                        mimeTypeObj:
                          extensions:
                          - xml
                          isXML: true
                          isText: true
                          type: text/xml
                      response: true
                      responseMessage:
                        contentEncoding: UTF-8
                        content: PHNvYXA6RW52ZWxvcGUgeG1sbnM6c29hcD0iaHR0cDovL3NjaGVtYXMueG1sc29hcC5vcmcvc29hcC9lbnZlbG9wZS8iPjxzb2FwOkJvZHk+PG5zMjpyZXF1ZXN0TG9hblJlc3BvbnNlIHhtbG5zOm5zMj0iaHR0cDovL3NlcnZpY2UucGFyYWJhbmsucGFyYXNvZnQuY29tLyI+PG5zMjpsb2FuUmVzcG9uc2U+PHJlc3BvbnNlRGF0ZT4yMDIzLTA3LTI1VDIwOjAzOjI4Ljg4OVo8L3Jlc3BvbnNlRGF0ZT48bG9hblByb3ZpZGVyTmFtZT5XZWFsdGggU2VjdXJpdGllcyBEeW5hbWljIExvYW5zIChXU0RMKTwvbG9hblByb3ZpZGVyTmFtZT48YXBwcm92ZWQ+dHJ1ZTwvYXBwcm92ZWQ+PC9uczI6bG9hblJlc3BvbnNlPjwvbnMyOnJlcXVlc3RMb2FuUmVzcG9uc2U+PC9zb2FwOkJvZHk+PC9zb2FwOkVudmVsb3BlPg==
                        endpoint: http://dev1.parasoft.com:8091/parabank/services/LoanProcessor
                        type: 2
                        httpHeader: "HTTP/1.1 200 \r\nContent-Type: text/xml;charset=UTF-8\r\
                          \nContent-Length: 400\r\nDate: Tue, 25 Jul 2023 20:03:28\
                          \ GMT"
                        mimeType: true
                        mimeTypeObj:
                          extensions:
                          - xml
                          isXML: true
                          isText: true
                          type: text/xml
                      writeRequestTime: true
                      requestTime: 1690315408879
                      writeResponseTime: true
                      responseTime: 1690315408892
                    seqKey:
                      keys:
                      - ""
                      - ""
                      - "Test 1: Envelope"
                      - <soap:Envelope xmlns:soap="http://schemas.xmlsoap.org/soap/envelope/"><soap:Body><ns2:requestLoanResponse
                        xmlns:ns2="http://service.parabank.parasoft.com/"><ns2:loanResponse><responseDate>2023-07-25T20:03:28.867Z</responseDate><loanProviderName>Wealth
                        Securities Dynamic Loans (WSDL)</loanProviderName><approved>true</approved></ns2:loanResponse></ns2:requestLoanResponse></soap:Body></soap:Envelope>
                      - downPayment
                      - 100
                      - loanAmount
                      - 1000
                      row:
                        refs:
                        - dataSourceName: loan_data
                          row: 1
                        last: false
                  testName: requestLoan (dev1.parasoft.com)
                  writeTimestamp: true
                  timestamp: 1690315408905
                - sequences:
                  - invocations:
                    - requestTimeNanos: 484430966317300
                      responseTimeNanos: 484430977348600
                      invKey:
                        description: http://dev1.parasoft.com:8091/parabank/services/LoanProcessor
                        seqNum: 1
                      request: true
                      requestMessage:
                        contentEncoding: UTF-8
                        content: PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiPz48U09BUC1FTlY6RW52ZWxvcGUgeG1sbnM6U09BUC1FTlY9Imh0dHA6Ly9zY2hlbWFzLnhtbHNvYXAub3JnL3NvYXAvZW52ZWxvcGUvIiB4bWxuczp4c2Q9Imh0dHA6Ly93d3cudzMub3JnLzIwMDEvWE1MU2NoZW1hIiB4bWxuczp4c2k9Imh0dHA6Ly93d3cudzMub3JnLzIwMDEvWE1MU2NoZW1hLWluc3RhbmNlIj48U09BUC1FTlY6Qm9keT48cmVxdWVzdExvYW4geG1sbnM9Imh0dHA6Ly9zZXJ2aWNlLnBhcmFiYW5rLnBhcmFzb2Z0LmNvbS8iPjxsb2FuUmVxdWVzdD48cmVxdWVzdERhdGUgeG1sbnM9IiI+MjAyMy0wNy0yNFQyMzowODo0MS45NTFaPC9yZXF1ZXN0RGF0ZT48Y3VzdG9tZXJJZCB4bWxucz0iIj4xMjIxMjwvY3VzdG9tZXJJZD48YXZhaWxhYmxlRnVuZHMgeG1sbnM9IiI+MTM5Mi42NzwvYXZhaWxhYmxlRnVuZHM+PGxvYW5BbW91bnQgeG1sbnM9IiI+NTAwMDwvbG9hbkFtb3VudD48ZG93blBheW1lbnQgeG1sbnM9IiI+MTAwPC9kb3duUGF5bWVudD48L2xvYW5SZXF1ZXN0PjwvcmVxdWVzdExvYW4+PC9TT0FQLUVOVjpCb2R5PjwvU09BUC1FTlY6RW52ZWxvcGU+
                        endpoint: http://dev1.parasoft.com:8091/parabank/services/LoanProcessor
                        type: 1
                        httpHeader: "POST /parabank/services/LoanProcessor HTTP/1.1\r\
                          \nHost: dev1.parasoft.com:8091\r\nContent-Type: text/xml;\
                          \ charset=UTF-8\r\nContent-Length: 591\r\nSOAPAction: \"\
                          \"\r\nAccept: */*\r\nUser-Agent: Apache-CXF/3.5.5\r\nCache-Control:\
                          \ no-cache\r\nPragma: no-cache"
                        mimeType: true
                        mimeTypeObj:
                          extensions:
                          - xml
                          isXML: true
                          isText: true
                          type: text/xml
                      response: true
                      responseMessage:
                        contentEncoding: UTF-8
                        content: PHNvYXA6RW52ZWxvcGUgeG1sbnM6c29hcD0iaHR0cDovL3NjaGVtYXMueG1sc29hcC5vcmcvc29hcC9lbnZlbG9wZS8iPjxzb2FwOkJvZHk+PG5zMjpyZXF1ZXN0TG9hblJlc3BvbnNlIHhtbG5zOm5zMj0iaHR0cDovL3NlcnZpY2UucGFyYWJhbmsucGFyYXNvZnQuY29tLyI+PG5zMjpsb2FuUmVzcG9uc2U+PHJlc3BvbnNlRGF0ZT4yMDIzLTA3LTI2VDE4OjEyOjI5LjM1NVo8L3Jlc3BvbnNlRGF0ZT48bG9hblByb3ZpZGVyTmFtZT5XZWFsdGggU2VjdXJpdGllcyBEeW5hbWljIExvYW5zIChXU0RMKTwvbG9hblByb3ZpZGVyTmFtZT48YXBwcm92ZWQ+dHJ1ZTwvYXBwcm92ZWQ+PC9uczI6bG9hblJlc3BvbnNlPjwvbnMyOnJlcXVlc3RMb2FuUmVzcG9uc2U+PC9zb2FwOkJvZHk+PC9zb2FwOkVudmVsb3BlPg==
                        endpoint: http://dev1.parasoft.com:8091/parabank/services/LoanProcessor
                        type: 2
                        httpHeader: "HTTP/1.1 200 \r\nContent-Type: text/xml;charset=UTF-8\r\
                          \nContent-Length: 400\r\nDate: Wed, 26 Jul 2023 18:12:29\
                          \ GMT"
                        mimeType: true
                        mimeTypeObj:
                          extensions:
                          - xml
                          isXML: true
                          isText: true
                          type: text/xml
                      writeRequestTime: true
                      requestTime: 1690395149348
                      writeResponseTime: true
                      responseTime: 1690395149359
                    seqKey:
                      keys:
                      - ""
                      - ""
                      - "Test 1: Envelope"
                      - <soap:Envelope xmlns:soap="http://schemas.xmlsoap.org/soap/envelope/"><soap:Body><ns2:requestLoanResponse
                        xmlns:ns2="http://service.parabank.parasoft.com/"><ns2:loanResponse><responseDate>2023-07-26T18:12:29.335Z</responseDate><loanProviderName>Wealth
                        Securities Dynamic Loans (WSDL)</loanProviderName><approved>true</approved></ns2:loanResponse></ns2:requestLoanResponse></soap:Body></soap:Envelope>
                      - downPayment
                      - 100
                      - loanAmount
                      - 5000
                      row:
                        refs:
                        - first: false
                          last: true
                          dataSourceName: loan_data
                          row: 3
                        first: false
                  - invocations:
                    - requestTimeNanos: 484430907985200
                      responseTimeNanos: 484430918559500
                      invKey:
                        description: http://dev1.parasoft.com:8091/parabank/services/LoanProcessor
                        seqNum: 1
                      request: true
                      requestMessage:
                        contentEncoding: UTF-8
                        content: PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiPz48U09BUC1FTlY6RW52ZWxvcGUgeG1sbnM6U09BUC1FTlY9Imh0dHA6Ly9zY2hlbWFzLnhtbHNvYXAub3JnL3NvYXAvZW52ZWxvcGUvIiB4bWxuczp4c2Q9Imh0dHA6Ly93d3cudzMub3JnLzIwMDEvWE1MU2NoZW1hIiB4bWxuczp4c2k9Imh0dHA6Ly93d3cudzMub3JnLzIwMDEvWE1MU2NoZW1hLWluc3RhbmNlIj48U09BUC1FTlY6Qm9keT48cmVxdWVzdExvYW4geG1sbnM9Imh0dHA6Ly9zZXJ2aWNlLnBhcmFiYW5rLnBhcmFzb2Z0LmNvbS8iPjxsb2FuUmVxdWVzdD48cmVxdWVzdERhdGUgeG1sbnM9IiI+MjAyMy0wNy0yNFQyMzowODo0MS45NTFaPC9yZXF1ZXN0RGF0ZT48Y3VzdG9tZXJJZCB4bWxucz0iIj4xMjIxMjwvY3VzdG9tZXJJZD48YXZhaWxhYmxlRnVuZHMgeG1sbnM9IiI+MTM5Mi42NzwvYXZhaWxhYmxlRnVuZHM+PGxvYW5BbW91bnQgeG1sbnM9IiI+MTAwMDAwMDwvbG9hbkFtb3VudD48ZG93blBheW1lbnQgeG1sbnM9IiI+MTwvZG93blBheW1lbnQ+PC9sb2FuUmVxdWVzdD48L3JlcXVlc3RMb2FuPjwvU09BUC1FTlY6Qm9keT48L1NPQVAtRU5WOkVudmVsb3BlPg==
                        endpoint: http://dev1.parasoft.com:8091/parabank/services/LoanProcessor
                        type: 1
                        httpHeader: "POST /parabank/services/LoanProcessor HTTP/1.1\r\
                          \nHost: dev1.parasoft.com:8091\r\nContent-Type: text/xml;\
                          \ charset=UTF-8\r\nContent-Length: 592\r\nSOAPAction: \"\
                          \"\r\nAccept: */*\r\nUser-Agent: Apache-CXF/3.5.5\r\nCache-Control:\
                          \ no-cache\r\nPragma: no-cache"
                        mimeType: true
                        mimeTypeObj:
                          extensions:
                          - xml
                          isXML: true
                          isText: true
                          type: text/xml
                      response: true
                      responseMessage:
                        contentEncoding: UTF-8
                        content: PHNvYXA6RW52ZWxvcGUgeG1sbnM6c29hcD0iaHR0cDovL3NjaGVtYXMueG1sc29hcC5vcmcvc29hcC9lbnZlbG9wZS8iPjxzb2FwOkJvZHk+PG5zMjpyZXF1ZXN0TG9hblJlc3BvbnNlIHhtbG5zOm5zMj0iaHR0cDovL3NlcnZpY2UucGFyYWJhbmsucGFyYXNvZnQuY29tLyI+PG5zMjpsb2FuUmVzcG9uc2U+PHJlc3BvbnNlRGF0ZT4yMDIzLTA3LTI2VDE4OjEyOjI5LjI5Nlo8L3Jlc3BvbnNlRGF0ZT48bG9hblByb3ZpZGVyTmFtZT5XZWFsdGggU2VjdXJpdGllcyBEeW5hbWljIExvYW5zIChXU0RMKTwvbG9hblByb3ZpZGVyTmFtZT48YXBwcm92ZWQ+ZmFsc2U8L2FwcHJvdmVkPjxtZXNzYWdlPmVycm9yLmluc3VmZmljaWVudC5mdW5kczwvbWVzc2FnZT48L25zMjpsb2FuUmVzcG9uc2U+PC9uczI6cmVxdWVzdExvYW5SZXNwb25zZT48L3NvYXA6Qm9keT48L3NvYXA6RW52ZWxvcGU+
                        endpoint: http://dev1.parasoft.com:8091/parabank/services/LoanProcessor
                        type: 2
                        httpHeader: "HTTP/1.1 200 \r\nContent-Type: text/xml;charset=UTF-8\r\
                          \nContent-Length: 444\r\nDate: Wed, 26 Jul 2023 18:12:29\
                          \ GMT"
                        mimeType: true
                        mimeTypeObj:
                          extensions:
                          - xml
                          isXML: true
                          isText: true
                          type: text/xml
                      writeRequestTime: true
                      requestTime: 1690395149290
                      writeResponseTime: true
                      responseTime: 1690395149300
                    seqKey:
                      keys:
                      - ""
                      - ""
                      - "Test 1: Envelope"
                      - <soap:Envelope xmlns:soap="http://schemas.xmlsoap.org/soap/envelope/"><soap:Body><ns2:requestLoanResponse
                        xmlns:ns2="http://service.parabank.parasoft.com/"><ns2:loanResponse><responseDate>2023-07-26T18:12:29.276Z</responseDate><loanProviderName>Wealth
                        Securities Dynamic Loans (WSDL)</loanProviderName><approved>false</approved><message>error.insufficient.funds</message></ns2:loanResponse></ns2:requestLoanResponse></soap:Body></soap:Envelope>
                      - downPayment
                      - 1
                      - loanAmount
                      - 1000000
                      row:
                        refs:
                        - first: false
                          dataSourceName: loan_data
                          row: 2
                        first: false
                        last: false
                  - invocations:
                    - requestTimeNanos: 484430663134800
                      responseTimeNanos: 484430836816800
                      invKey:
                        description: http://dev1.parasoft.com:8091/parabank/services/LoanProcessor
                        seqNum: 1
                      request: true
                      requestMessage:
                        contentEncoding: UTF-8
                        content: PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiPz48U09BUC1FTlY6RW52ZWxvcGUgeG1sbnM6U09BUC1FTlY9Imh0dHA6Ly9zY2hlbWFzLnhtbHNvYXAub3JnL3NvYXAvZW52ZWxvcGUvIiB4bWxuczp4c2Q9Imh0dHA6Ly93d3cudzMub3JnLzIwMDEvWE1MU2NoZW1hIiB4bWxuczp4c2k9Imh0dHA6Ly93d3cudzMub3JnLzIwMDEvWE1MU2NoZW1hLWluc3RhbmNlIj48U09BUC1FTlY6Qm9keT48cmVxdWVzdExvYW4geG1sbnM9Imh0dHA6Ly9zZXJ2aWNlLnBhcmFiYW5rLnBhcmFzb2Z0LmNvbS8iPjxsb2FuUmVxdWVzdD48cmVxdWVzdERhdGUgeG1sbnM9IiI+MjAyMy0wNy0yNFQyMzowODo0MS45NTFaPC9yZXF1ZXN0RGF0ZT48Y3VzdG9tZXJJZCB4bWxucz0iIj4xMjIxMjwvY3VzdG9tZXJJZD48YXZhaWxhYmxlRnVuZHMgeG1sbnM9IiI+MTM5Mi42NzwvYXZhaWxhYmxlRnVuZHM+PGxvYW5BbW91bnQgeG1sbnM9IiI+MTAwMDwvbG9hbkFtb3VudD48ZG93blBheW1lbnQgeG1sbnM9IiI+MTAwPC9kb3duUGF5bWVudD48L2xvYW5SZXF1ZXN0PjwvcmVxdWVzdExvYW4+PC9TT0FQLUVOVjpCb2R5PjwvU09BUC1FTlY6RW52ZWxvcGU+
                        endpoint: http://dev1.parasoft.com:8091/parabank/services/LoanProcessor
                        type: 1
                        httpHeader: "POST /parabank/services/LoanProcessor HTTP/1.1\r\
                          \nHost: dev1.parasoft.com:8091\r\nContent-Type: text/xml;\
                          \ charset=UTF-8\r\nContent-Length: 591\r\nSOAPAction: \"\
                          \"\r\nAccept: */*\r\nUser-Agent: Apache-CXF/3.5.5\r\nCache-Control:\
                          \ no-cache\r\nPragma: no-cache"
                        mimeType: true
                        mimeTypeObj:
                          extensions:
                          - xml
                          isXML: true
                          isText: true
                          type: text/xml
                      response: true
                      responseMessage:
                        contentEncoding: UTF-8
                        content: PHNvYXA6RW52ZWxvcGUgeG1sbnM6c29hcD0iaHR0cDovL3NjaGVtYXMueG1sc29hcC5vcmcvc29hcC9lbnZlbG9wZS8iPjxzb2FwOkJvZHk+PG5zMjpyZXF1ZXN0TG9hblJlc3BvbnNlIHhtbG5zOm5zMj0iaHR0cDovL3NlcnZpY2UucGFyYWJhbmsucGFyYXNvZnQuY29tLyI+PG5zMjpsb2FuUmVzcG9uc2U+PHJlc3BvbnNlRGF0ZT4yMDIzLTA3LTI2VDE4OjEyOjI5LjE3MVo8L3Jlc3BvbnNlRGF0ZT48bG9hblByb3ZpZGVyTmFtZT5XZWFsdGggU2VjdXJpdGllcyBEeW5hbWljIExvYW5zIChXU0RMKTwvbG9hblByb3ZpZGVyTmFtZT48YXBwcm92ZWQ+dHJ1ZTwvYXBwcm92ZWQ+PC9uczI6bG9hblJlc3BvbnNlPjwvbnMyOnJlcXVlc3RMb2FuUmVzcG9uc2U+PC9zb2FwOkJvZHk+PC9zb2FwOkVudmVsb3BlPg==
                        endpoint: http://dev1.parasoft.com:8091/parabank/services/LoanProcessor
                        type: 2
                        httpHeader: "HTTP/1.1 200 \r\nContent-Type: text/xml;charset=UTF-8\r\
                          \nContent-Length: 400\r\nDate: Wed, 26 Jul 2023 18:12:29\
                          \ GMT"
                        mimeType: true
                        mimeTypeObj:
                          extensions:
                          - xml
                          isXML: true
                          isText: true
                          type: text/xml
                      writeRequestTime: true
                      requestTime: 1690395149045
                      writeResponseTime: true
                      responseTime: 1690395149219
                    seqKey:
                      keys:
                      - ""
                      - ""
                      - "Test 1: Envelope"
                      - <soap:Envelope xmlns:soap="http://schemas.xmlsoap.org/soap/envelope/"><soap:Body><ns2:requestLoanResponse
                        xmlns:ns2="http://service.parabank.parasoft.com/"><ns2:loanResponse><responseDate>2023-07-26T18:12:29.029Z</responseDate><loanProviderName>Wealth
                        Securities Dynamic Loans (WSDL)</loanProviderName><approved>true</approved></ns2:loanResponse></ns2:requestLoanResponse></soap:Body></soap:Envelope>
                      - downPayment
                      - 100
                      - loanAmount
                      - 1000
                      row:
                        refs:
                        - dataSourceName: loan_data
                          row: 1
                        last: false
                  testName: requestLoan (dev1.parasoft.com)
                  writeTimestamp: true
                  timestamp: 1690395149234
                - sequences:
                  - invocations:
                    - requestTimeNanos: -1
                      responseTimeNanos: -1
                      invKey:
                        description: http://dev1.parasoft.com:8091/parabank/services/LoanProcessor
                        seqNum: 1
                      request: true
                      requestMessage:
                        contentEncoding: UTF-8
                        content: PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiPz48U09BUC1FTlY6RW52ZWxvcGUgeG1sbnM6U09BUC1FTlY9Imh0dHA6Ly9zY2hlbWFzLnhtbHNvYXAub3JnL3NvYXAvZW52ZWxvcGUvIiB4bWxuczp4c2Q9Imh0dHA6Ly93d3cudzMub3JnLzIwMDEvWE1MU2NoZW1hIiB4bWxuczp4c2k9Imh0dHA6Ly93d3cudzMub3JnLzIwMDEvWE1MU2NoZW1hLWluc3RhbmNlIj48U09BUC1FTlY6Qm9keT48cmVxdWVzdExvYW4geG1sbnM9Imh0dHA6Ly9zZXJ2aWNlLnBhcmFiYW5rLnBhcmFzb2Z0LmNvbS8iPjxsb2FuUmVxdWVzdD48cmVxdWVzdERhdGUgeG1sbnM9IiI+MjAyMy0wNy0yNFQyMzowODo0MS45NTFaPC9yZXF1ZXN0RGF0ZT48Y3VzdG9tZXJJZCB4bWxucz0iIj4xMjIxMjwvY3VzdG9tZXJJZD48YXZhaWxhYmxlRnVuZHMgeG1sbnM9IiI+MTM5Mi42NzwvYXZhaWxhYmxlRnVuZHM+PGxvYW5BbW91bnQgeG1sbnM9IiI+NTAwMDwvbG9hbkFtb3VudD48ZG93blBheW1lbnQgeG1sbnM9IiI+MTAwPC9kb3duUGF5bWVudD48L2xvYW5SZXF1ZXN0PjwvcmVxdWVzdExvYW4+PC9TT0FQLUVOVjpCb2R5PjwvU09BUC1FTlY6RW52ZWxvcGU+
                        endpoint: http://dev1.parasoft.com:8091/parabank/services/LoanProcessor
                        type: 1
                        httpHeader: ""
                        mimeType: true
                        mimeTypeObj:
                          extensions:
                          - xml
                          isXML: true
                          isText: true
                          type: text/xml
                      response: true
                      responseMessage:
                        content: ""
                        endpoint: http://dev1.parasoft.com:8091/parabank/services/LoanProcessor
                        type: 2
                        httpHeader: ""
                        mimeType: true
                        mimeTypeObj:
                          extensions:
                          - txt
                          isText: true
                          type: text/plain
                      writeRequestTime: true
                      requestTime: -1
                      writeResponseTime: true
                      responseTime: -1
                    seqKey:
                      keys:
                      - ""
                      - ""
                      - downPayment
                      - 100
                      - loanAmount
                      - 5000
                      row:
                        refs:
                        - first: false
                          last: true
                          dataSourceName: loan_data
                          row: 3
                        first: false
                  - invocations:
                    - requestTimeNanos: -1
                      responseTimeNanos: -1
                      invKey:
                        description: http://dev1.parasoft.com:8091/parabank/services/LoanProcessor
                        seqNum: 1
                      request: true
                      requestMessage:
                        contentEncoding: UTF-8
                        content: PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiPz48U09BUC1FTlY6RW52ZWxvcGUgeG1sbnM6U09BUC1FTlY9Imh0dHA6Ly9zY2hlbWFzLnhtbHNvYXAub3JnL3NvYXAvZW52ZWxvcGUvIiB4bWxuczp4c2Q9Imh0dHA6Ly93d3cudzMub3JnLzIwMDEvWE1MU2NoZW1hIiB4bWxuczp4c2k9Imh0dHA6Ly93d3cudzMub3JnLzIwMDEvWE1MU2NoZW1hLWluc3RhbmNlIj48U09BUC1FTlY6Qm9keT48cmVxdWVzdExvYW4geG1sbnM9Imh0dHA6Ly9zZXJ2aWNlLnBhcmFiYW5rLnBhcmFzb2Z0LmNvbS8iPjxsb2FuUmVxdWVzdD48cmVxdWVzdERhdGUgeG1sbnM9IiI+MjAyMy0wNy0yNFQyMzowODo0MS45NTFaPC9yZXF1ZXN0RGF0ZT48Y3VzdG9tZXJJZCB4bWxucz0iIj4xMjIxMjwvY3VzdG9tZXJJZD48YXZhaWxhYmxlRnVuZHMgeG1sbnM9IiI+MTM5Mi42NzwvYXZhaWxhYmxlRnVuZHM+PGxvYW5BbW91bnQgeG1sbnM9IiI+MTAwMDAwMDwvbG9hbkFtb3VudD48ZG93blBheW1lbnQgeG1sbnM9IiI+MTwvZG93blBheW1lbnQ+PC9sb2FuUmVxdWVzdD48L3JlcXVlc3RMb2FuPjwvU09BUC1FTlY6Qm9keT48L1NPQVAtRU5WOkVudmVsb3BlPg==
                        endpoint: http://dev1.parasoft.com:8091/parabank/services/LoanProcessor
                        type: 1
                        httpHeader: ""
                        mimeType: true
                        mimeTypeObj:
                          extensions:
                          - xml
                          isXML: true
                          isText: true
                          type: text/xml
                      response: true
                      responseMessage:
                        content: ""
                        endpoint: http://dev1.parasoft.com:8091/parabank/services/LoanProcessor
                        type: 2
                        httpHeader: ""
                        mimeType: true
                        mimeTypeObj:
                          extensions:
                          - txt
                          isText: true
                          type: text/plain
                      writeRequestTime: true
                      requestTime: -1
                      writeResponseTime: true
                      responseTime: -1
                    seqKey:
                      keys:
                      - ""
                      - ""
                      - downPayment
                      - 1
                      - loanAmount
                      - 1000000
                      row:
                        refs:
                        - first: false
                          dataSourceName: loan_data
                          row: 2
                        first: false
                        last: false
                  - invocations:
                    - requestTimeNanos: -1
                      responseTimeNanos: -1
                      invKey:
                        description: http://dev1.parasoft.com:8091/parabank/services/LoanProcessor
                        seqNum: 1
                      request: true
                      requestMessage:
                        contentEncoding: UTF-8
                        content: PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiPz48U09BUC1FTlY6RW52ZWxvcGUgeG1sbnM6U09BUC1FTlY9Imh0dHA6Ly9zY2hlbWFzLnhtbHNvYXAub3JnL3NvYXAvZW52ZWxvcGUvIiB4bWxuczp4c2Q9Imh0dHA6Ly93d3cudzMub3JnLzIwMDEvWE1MU2NoZW1hIiB4bWxuczp4c2k9Imh0dHA6Ly93d3cudzMub3JnLzIwMDEvWE1MU2NoZW1hLWluc3RhbmNlIj48U09BUC1FTlY6Qm9keT48cmVxdWVzdExvYW4geG1sbnM9Imh0dHA6Ly9zZXJ2aWNlLnBhcmFiYW5rLnBhcmFzb2Z0LmNvbS8iPjxsb2FuUmVxdWVzdD48cmVxdWVzdERhdGUgeG1sbnM9IiI+MjAyMy0wNy0yNFQyMzowODo0MS45NTFaPC9yZXF1ZXN0RGF0ZT48Y3VzdG9tZXJJZCB4bWxucz0iIj4xMjIxMjwvY3VzdG9tZXJJZD48YXZhaWxhYmxlRnVuZHMgeG1sbnM9IiI+MTM5Mi42NzwvYXZhaWxhYmxlRnVuZHM+PGxvYW5BbW91bnQgeG1sbnM9IiI+MTAwMDwvbG9hbkFtb3VudD48ZG93blBheW1lbnQgeG1sbnM9IiI+MTAwPC9kb3duUGF5bWVudD48L2xvYW5SZXF1ZXN0PjwvcmVxdWVzdExvYW4+PC9TT0FQLUVOVjpCb2R5PjwvU09BUC1FTlY6RW52ZWxvcGU+
                        endpoint: http://dev1.parasoft.com:8091/parabank/services/LoanProcessor
                        type: 1
                        httpHeader: ""
                        mimeType: true
                        mimeTypeObj:
                          extensions:
                          - xml
                          isXML: true
                          isText: true
                          type: text/xml
                      response: true
                      responseMessage:
                        content: ""
                        endpoint: http://dev1.parasoft.com:8091/parabank/services/LoanProcessor
                        type: 2
                        httpHeader: ""
                        mimeType: true
                        mimeTypeObj:
                          extensions:
                          - txt
                          isText: true
                          type: text/plain
                      writeRequestTime: true
                      requestTime: -1
                      writeResponseTime: true
                      responseTime: -1
                    seqKey:
                      keys:
                      - ""
                      - ""
                      - downPayment
                      - 100
                      - loanAmount
                      - 1000
                      row:
                        refs:
                        - dataSourceName: loan_data
                          row: 1
                        last: false
                  testName: requestLoan (dev1.parasoft.com)
                  writeTimestamp: true
                  timestamp: 1732664294829
                - sequences:
                  - invocations:
                    - requestTimeNanos: 1088670329908100
                      responseTimeNanos: 1088670371876500
                      invKey:
                        description: http://18.237.146.177:8091/parabank/services/LoanProcessor
                        seqNum: 1
                      request: true
                      requestMessage:
                        contentEncoding: UTF-8
                        content: PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiPz48U09BUC1FTlY6RW52ZWxvcGUgeG1sbnM6U09BUC1FTlY9Imh0dHA6Ly9zY2hlbWFzLnhtbHNvYXAub3JnL3NvYXAvZW52ZWxvcGUvIiB4bWxuczp4c2Q9Imh0dHA6Ly93d3cudzMub3JnLzIwMDEvWE1MU2NoZW1hIiB4bWxuczp4c2k9Imh0dHA6Ly93d3cudzMub3JnLzIwMDEvWE1MU2NoZW1hLWluc3RhbmNlIj48U09BUC1FTlY6Qm9keT48cmVxdWVzdExvYW4geG1sbnM9Imh0dHA6Ly9zZXJ2aWNlLnBhcmFiYW5rLnBhcmFzb2Z0LmNvbS8iPjxsb2FuUmVxdWVzdD48cmVxdWVzdERhdGUgeG1sbnM9IiI+MjAyMy0wNy0yNFQyMzowODo0MS45NTFaPC9yZXF1ZXN0RGF0ZT48Y3VzdG9tZXJJZCB4bWxucz0iIj4xMjIxMjwvY3VzdG9tZXJJZD48YXZhaWxhYmxlRnVuZHMgeG1sbnM9IiI+MTM5Mi42NzwvYXZhaWxhYmxlRnVuZHM+PGxvYW5BbW91bnQgeG1sbnM9IiI+NTAwMDwvbG9hbkFtb3VudD48ZG93blBheW1lbnQgeG1sbnM9IiI+MTAwPC9kb3duUGF5bWVudD48L2xvYW5SZXF1ZXN0PjwvcmVxdWVzdExvYW4+PC9TT0FQLUVOVjpCb2R5PjwvU09BUC1FTlY6RW52ZWxvcGU+
                        endpoint: http://18.237.146.177:8091/parabank/services/LoanProcessor
                        type: 1
                        httpHeader: "POST /parabank/services/LoanProcessor HTTP/1.1\r\
                          \nHost: 18.237.146.177:8091\r\nContent-Type: text/xml; charset=UTF-8\r\
                          \nContent-Length: 591\r\nSOAPAction: \"\"\r\nAccept: */*\r\
                          \nUser-Agent: Apache-CXF/3.5.5\r\nCache-Control: no-cache\r\
                          \nPragma: no-cache"
                        mimeType: true
                        mimeTypeObj:
                          extensions:
                          - xml
                          isXML: true
                          isText: true
                          type: text/xml
                      response: true
                      responseMessage:
                        contentEncoding: UTF-8
                        content: PHNvYXA6RW52ZWxvcGUgeG1sbnM6c29hcD0iaHR0cDovL3NjaGVtYXMueG1sc29hcC5vcmcvc29hcC9lbnZlbG9wZS8iPjxzb2FwOkJvZHk+PG5zMjpyZXF1ZXN0TG9hblJlc3BvbnNlIHhtbG5zOm5zMj0iaHR0cDovL3NlcnZpY2UucGFyYWJhbmsucGFyYXNvZnQuY29tLyI+PG5zMjpsb2FuUmVzcG9uc2U+PHJlc3BvbnNlRGF0ZT4yMDI0LTExLTI2VDIzOjQzOjMwLjQ5Nlo8L3Jlc3BvbnNlRGF0ZT48bG9hblByb3ZpZGVyTmFtZT5XZWFsdGggU2VjdXJpdGllcyBEeW5hbWljIExvYW5zIChXU0RMKTwvbG9hblByb3ZpZGVyTmFtZT48YXBwcm92ZWQ+dHJ1ZTwvYXBwcm92ZWQ+PC9uczI6bG9hblJlc3BvbnNlPjwvbnMyOnJlcXVlc3RMb2FuUmVzcG9uc2U+PC9zb2FwOkJvZHk+PC9zb2FwOkVudmVsb3BlPg==
                        endpoint: http://18.237.146.177:8091/parabank/services/LoanProcessor
                        type: 2
                        httpHeader: "HTTP/1.1 200 \r\nContent-Type: text/xml;charset=UTF-8\r\
                          \nContent-Length: 400\r\nDate: Tue, 26 Nov 2024 23:43:30\
                          \ GMT"
                        mimeType: true
                        mimeTypeObj:
                          extensions:
                          - xml
                          isXML: true
                          isText: true
                          type: text/xml
                      writeRequestTime: true
                      requestTime: 1732664610533
                      writeResponseTime: true
                      responseTime: 1732664610575
                    seqKey:
                      keys:
                      - ""
                      - ""
                      - "Test 1: Envelope"
                      - <soap:Envelope xmlns:soap="http://schemas.xmlsoap.org/soap/envelope/"><soap:Body><ns2:requestLoanResponse
                        xmlns:ns2="http://service.parabank.parasoft.com/"><ns2:loanResponse><responseDate>2024-11-26T23:43:30.412Z</responseDate><loanProviderName>Wealth
                        Securities Dynamic Loans (WSDL)</loanProviderName><approved>true</approved></ns2:loanResponse></ns2:requestLoanResponse></soap:Body></soap:Envelope>
                      - downPayment
                      - 100
                      - loanAmount
                      - 5000
                      row:
                        refs:
                        - first: false
                          last: true
                          dataSourceName: loan_data
                          row: 3
                        first: false
                  - invocations:
                    - requestTimeNanos: 1088670140516300
                      responseTimeNanos: 1088670183783700
                      invKey:
                        description: http://18.237.146.177:8091/parabank/services/LoanProcessor
                        seqNum: 1
                      request: true
                      requestMessage:
                        contentEncoding: UTF-8
                        content: PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiPz48U09BUC1FTlY6RW52ZWxvcGUgeG1sbnM6U09BUC1FTlY9Imh0dHA6Ly9zY2hlbWFzLnhtbHNvYXAub3JnL3NvYXAvZW52ZWxvcGUvIiB4bWxuczp4c2Q9Imh0dHA6Ly93d3cudzMub3JnLzIwMDEvWE1MU2NoZW1hIiB4bWxuczp4c2k9Imh0dHA6Ly93d3cudzMub3JnLzIwMDEvWE1MU2NoZW1hLWluc3RhbmNlIj48U09BUC1FTlY6Qm9keT48cmVxdWVzdExvYW4geG1sbnM9Imh0dHA6Ly9zZXJ2aWNlLnBhcmFiYW5rLnBhcmFzb2Z0LmNvbS8iPjxsb2FuUmVxdWVzdD48cmVxdWVzdERhdGUgeG1sbnM9IiI+MjAyMy0wNy0yNFQyMzowODo0MS45NTFaPC9yZXF1ZXN0RGF0ZT48Y3VzdG9tZXJJZCB4bWxucz0iIj4xMjIxMjwvY3VzdG9tZXJJZD48YXZhaWxhYmxlRnVuZHMgeG1sbnM9IiI+MTM5Mi42NzwvYXZhaWxhYmxlRnVuZHM+PGxvYW5BbW91bnQgeG1sbnM9IiI+MTAwMDAwMDwvbG9hbkFtb3VudD48ZG93blBheW1lbnQgeG1sbnM9IiI+MTwvZG93blBheW1lbnQ+PC9sb2FuUmVxdWVzdD48L3JlcXVlc3RMb2FuPjwvU09BUC1FTlY6Qm9keT48L1NPQVAtRU5WOkVudmVsb3BlPg==
                        endpoint: http://18.237.146.177:8091/parabank/services/LoanProcessor
                        type: 1
                        httpHeader: "POST /parabank/services/LoanProcessor HTTP/1.1\r\
                          \nHost: 18.237.146.177:8091\r\nContent-Type: text/xml; charset=UTF-8\r\
                          \nContent-Length: 592\r\nSOAPAction: \"\"\r\nAccept: */*\r\
                          \nUser-Agent: Apache-CXF/3.5.5\r\nCache-Control: no-cache\r\
                          \nPragma: no-cache"
                        mimeType: true
                        mimeTypeObj:
                          extensions:
                          - xml
                          isXML: true
                          isText: true
                          type: text/xml
                      response: true
                      responseMessage:
                        contentEncoding: UTF-8
                        content: PHNvYXA6RW52ZWxvcGUgeG1sbnM6c29hcD0iaHR0cDovL3NjaGVtYXMueG1sc29hcC5vcmcvc29hcC9lbnZlbG9wZS8iPjxzb2FwOkJvZHk+PG5zMjpyZXF1ZXN0TG9hblJlc3BvbnNlIHhtbG5zOm5zMj0iaHR0cDovL3NlcnZpY2UucGFyYWJhbmsucGFyYXNvZnQuY29tLyI+PG5zMjpsb2FuUmVzcG9uc2U+PHJlc3BvbnNlRGF0ZT4yMDI0LTExLTI2VDIzOjQzOjMwLjMwOVo8L3Jlc3BvbnNlRGF0ZT48bG9hblByb3ZpZGVyTmFtZT5XZWFsdGggU2VjdXJpdGllcyBEeW5hbWljIExvYW5zIChXU0RMKTwvbG9hblByb3ZpZGVyTmFtZT48YXBwcm92ZWQ+ZmFsc2U8L2FwcHJvdmVkPjxtZXNzYWdlPmVycm9yLmluc3VmZmljaWVudC5mdW5kczwvbWVzc2FnZT48L25zMjpsb2FuUmVzcG9uc2U+PC9uczI6cmVxdWVzdExvYW5SZXNwb25zZT48L3NvYXA6Qm9keT48L3NvYXA6RW52ZWxvcGU+
                        endpoint: http://18.237.146.177:8091/parabank/services/LoanProcessor
                        type: 2
                        httpHeader: "HTTP/1.1 200 \r\nContent-Type: text/xml;charset=UTF-8\r\
                          \nContent-Length: 444\r\nDate: Tue, 26 Nov 2024 23:43:30\
                          \ GMT"
                        mimeType: true
                        mimeTypeObj:
                          extensions:
                          - xml
                          isXML: true
                          isText: true
                          type: text/xml
                      writeRequestTime: true
                      requestTime: 1732664610344
                      writeResponseTime: true
                      responseTime: 1732664610387
                    seqKey:
                      keys:
                      - ""
                      - ""
                      - "Test 1: Envelope"
                      - <soap:Envelope xmlns:soap="http://schemas.xmlsoap.org/soap/envelope/"><soap:Body><ns2:requestLoanResponse
                        xmlns:ns2="http://service.parabank.parasoft.com/"><ns2:loanResponse><responseDate>2024-11-26T23:43:30.218Z</responseDate><loanProviderName>Wealth
                        Securities Dynamic Loans (WSDL)</loanProviderName><approved>false</approved><message>error.insufficient.funds</message></ns2:loanResponse></ns2:requestLoanResponse></soap:Body></soap:Envelope>
                      - downPayment
                      - 1
                      - loanAmount
                      - 1000000
                      row:
                        refs:
                        - first: false
                          dataSourceName: loan_data
                          row: 2
                        first: false
                        last: false
                  - invocations:
                    - requestTimeNanos: 1088669760089300
                      responseTimeNanos: 1088669914280900
                      invKey:
                        description: http://18.237.146.177:8091/parabank/services/LoanProcessor
                        seqNum: 1
                      request: true
                      requestMessage:
                        contentEncoding: UTF-8
                        content: PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiPz48U09BUC1FTlY6RW52ZWxvcGUgeG1sbnM6U09BUC1FTlY9Imh0dHA6Ly9zY2hlbWFzLnhtbHNvYXAub3JnL3NvYXAvZW52ZWxvcGUvIiB4bWxuczp4c2Q9Imh0dHA6Ly93d3cudzMub3JnLzIwMDEvWE1MU2NoZW1hIiB4bWxuczp4c2k9Imh0dHA6Ly93d3cudzMub3JnLzIwMDEvWE1MU2NoZW1hLWluc3RhbmNlIj48U09BUC1FTlY6Qm9keT48cmVxdWVzdExvYW4geG1sbnM9Imh0dHA6Ly9zZXJ2aWNlLnBhcmFiYW5rLnBhcmFzb2Z0LmNvbS8iPjxsb2FuUmVxdWVzdD48cmVxdWVzdERhdGUgeG1sbnM9IiI+MjAyMy0wNy0yNFQyMzowODo0MS45NTFaPC9yZXF1ZXN0RGF0ZT48Y3VzdG9tZXJJZCB4bWxucz0iIj4xMjIxMjwvY3VzdG9tZXJJZD48YXZhaWxhYmxlRnVuZHMgeG1sbnM9IiI+MTM5Mi42NzwvYXZhaWxhYmxlRnVuZHM+PGxvYW5BbW91bnQgeG1sbnM9IiI+MTAwMDwvbG9hbkFtb3VudD48ZG93blBheW1lbnQgeG1sbnM9IiI+MTAwPC9kb3duUGF5bWVudD48L2xvYW5SZXF1ZXN0PjwvcmVxdWVzdExvYW4+PC9TT0FQLUVOVjpCb2R5PjwvU09BUC1FTlY6RW52ZWxvcGU+
                        endpoint: http://18.237.146.177:8091/parabank/services/LoanProcessor
                        type: 1
                        httpHeader: "POST /parabank/services/LoanProcessor HTTP/1.1\r\
                          \nHost: 18.237.146.177:8091\r\nContent-Type: text/xml; charset=UTF-8\r\
                          \nContent-Length: 591\r\nSOAPAction: \"\"\r\nAccept: */*\r\
                          \nUser-Agent: Apache-CXF/3.5.5\r\nCache-Control: no-cache\r\
                          \nPragma: no-cache"
                        mimeType: true
                        mimeTypeObj:
                          extensions:
                          - xml
                          isXML: true
                          isText: true
                          type: text/xml
                      response: true
                      responseMessage:
                        contentEncoding: UTF-8
                        content: PHNvYXA6RW52ZWxvcGUgeG1sbnM6c29hcD0iaHR0cDovL3NjaGVtYXMueG1sc29hcC5vcmcvc29hcC9lbnZlbG9wZS8iPjxzb2FwOkJvZHk+PG5zMjpyZXF1ZXN0TG9hblJlc3BvbnNlIHhtbG5zOm5zMj0iaHR0cDovL3NlcnZpY2UucGFyYWJhbmsucGFyYXNvZnQuY29tLyI+PG5zMjpsb2FuUmVzcG9uc2U+PHJlc3BvbnNlRGF0ZT4yMDI0LTExLTI2VDIzOjQzOjMwLjAyMVo8L3Jlc3BvbnNlRGF0ZT48bG9hblByb3ZpZGVyTmFtZT5XZWFsdGggU2VjdXJpdGllcyBEeW5hbWljIExvYW5zIChXU0RMKTwvbG9hblByb3ZpZGVyTmFtZT48YXBwcm92ZWQ+dHJ1ZTwvYXBwcm92ZWQ+PC9uczI6bG9hblJlc3BvbnNlPjwvbnMyOnJlcXVlc3RMb2FuUmVzcG9uc2U+PC9zb2FwOkJvZHk+PC9zb2FwOkVudmVsb3BlPg==
                        endpoint: http://18.237.146.177:8091/parabank/services/LoanProcessor
                        type: 2
                        httpHeader: "HTTP/1.1 200 \r\nContent-Type: text/xml;charset=UTF-8\r\
                          \nContent-Length: 400\r\nDate: Tue, 26 Nov 2024 23:43:30\
                          \ GMT"
                        mimeType: true
                        mimeTypeObj:
                          extensions:
                          - xml
                          isXML: true
                          isText: true
                          type: text/xml
                      writeRequestTime: true
                      requestTime: 1732664609964
                      writeResponseTime: true
                      responseTime: 1732664610118
                    seqKey:
                      keys:
                      - ""
                      - ""
                      - "Test 1: Envelope"
                      - <soap:Envelope xmlns:soap="http://schemas.xmlsoap.org/soap/envelope/"><soap:Body><ns2:requestLoanResponse
                        xmlns:ns2="http://service.parabank.parasoft.com/"><ns2:loanResponse><responseDate>2024-11-26T23:43:29.844Z</responseDate><loanProviderName>Wealth
                        Securities Dynamic Loans (WSDL)</loanProviderName><approved>true</approved></ns2:loanResponse></ns2:requestLoanResponse></soap:Body></soap:Envelope>
                      - downPayment
                      - 100
                      - loanAmount
                      - 1000
                      row:
                        refs:
                        - dataSourceName: loan_data
                          row: 1
                        last: false
                  testName: requestLoan (dev1.parasoft.com)
                  writeTimestamp: true
                  timestamp: 1732664610207
                - sequences:
                  - invocations:
                    - requestTimeNanos: 1088771806668900
                      responseTimeNanos: 1088771850439900
                      invKey:
                        description: http://18.237.146.177:8091/parabank/services/LoanProcessor
                        seqNum: 1
                      request: true
                      requestMessage:
                        contentEncoding: UTF-8
                        content: PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiPz48U09BUC1FTlY6RW52ZWxvcGUgeG1sbnM6U09BUC1FTlY9Imh0dHA6Ly9zY2hlbWFzLnhtbHNvYXAub3JnL3NvYXAvZW52ZWxvcGUvIiB4bWxuczp4c2Q9Imh0dHA6Ly93d3cudzMub3JnLzIwMDEvWE1MU2NoZW1hIiB4bWxuczp4c2k9Imh0dHA6Ly93d3cudzMub3JnLzIwMDEvWE1MU2NoZW1hLWluc3RhbmNlIj48U09BUC1FTlY6Qm9keT48cmVxdWVzdExvYW4geG1sbnM9Imh0dHA6Ly9zZXJ2aWNlLnBhcmFiYW5rLnBhcmFzb2Z0LmNvbS8iPjxsb2FuUmVxdWVzdD48cmVxdWVzdERhdGUgeG1sbnM9IiI+MjAyMy0wNy0yNFQyMzowODo0MS45NTFaPC9yZXF1ZXN0RGF0ZT48Y3VzdG9tZXJJZCB4bWxucz0iIj4xMjIxMjwvY3VzdG9tZXJJZD48YXZhaWxhYmxlRnVuZHMgeG1sbnM9IiI+MTM5Mi42NzwvYXZhaWxhYmxlRnVuZHM+PGxvYW5BbW91bnQgeG1sbnM9IiI+NTAwMDwvbG9hbkFtb3VudD48ZG93blBheW1lbnQgeG1sbnM9IiI+MTAwPC9kb3duUGF5bWVudD48L2xvYW5SZXF1ZXN0PjwvcmVxdWVzdExvYW4+PC9TT0FQLUVOVjpCb2R5PjwvU09BUC1FTlY6RW52ZWxvcGU+
                        endpoint: http://18.237.146.177:8091/parabank/services/LoanProcessor
                        type: 1
                        httpHeader: "POST /parabank/services/LoanProcessor HTTP/1.1\r\
                          \nHost: 18.237.146.177:8091\r\nContent-Type: text/xml; charset=UTF-8\r\
                          \nContent-Length: 591\r\nSOAPAction: \"\"\r\nAccept: */*\r\
                          \nUser-Agent: Apache-CXF/3.5.5\r\nCache-Control: no-cache\r\
                          \nPragma: no-cache"
                        mimeType: true
                        mimeTypeObj:
                          extensions:
                          - xml
                          isXML: true
                          isText: true
                          type: text/xml
                      response: true
                      responseMessage:
                        contentEncoding: UTF-8
                        content: PHNvYXA6RW52ZWxvcGUgeG1sbnM6c29hcD0iaHR0cDovL3NjaGVtYXMueG1sc29hcC5vcmcvc29hcC9lbnZlbG9wZS8iPjxzb2FwOkJvZHk+PG5zMjpyZXF1ZXN0TG9hblJlc3BvbnNlIHhtbG5zOm5zMj0iaHR0cDovL3NlcnZpY2UucGFyYWJhbmsucGFyYXNvZnQuY29tLyI+PG5zMjpsb2FuUmVzcG9uc2U+PHJlc3BvbnNlRGF0ZT4yMDI0LTExLTI2VDIzOjQ1OjExLjk3MVo8L3Jlc3BvbnNlRGF0ZT48bG9hblByb3ZpZGVyTmFtZT5XZWFsdGggU2VjdXJpdGllcyBEeW5hbWljIExvYW5zIChXU0RMKTwvbG9hblByb3ZpZGVyTmFtZT48YXBwcm92ZWQ+dHJ1ZTwvYXBwcm92ZWQ+PC9uczI6bG9hblJlc3BvbnNlPjwvbnMyOnJlcXVlc3RMb2FuUmVzcG9uc2U+PC9zb2FwOkJvZHk+PC9zb2FwOkVudmVsb3BlPg==
                        endpoint: http://18.237.146.177:8091/parabank/services/LoanProcessor
                        type: 2
                        httpHeader: "HTTP/1.1 200 \r\nContent-Type: text/xml;charset=UTF-8\r\
                          \nContent-Length: 400\r\nDate: Tue, 26 Nov 2024 23:45:11\
                          \ GMT"
                        mimeType: true
                        mimeTypeObj:
                          extensions:
                          - xml
                          isXML: true
                          isText: true
                          type: text/xml
                      writeRequestTime: true
                      requestTime: 1732664712009
                      writeResponseTime: true
                      responseTime: 1732664712053
                    seqKey:
                      keys:
                      - ""
                      - ""
                      - "Test 1: Envelope"
                      - <soap:Envelope xmlns:soap="http://schemas.xmlsoap.org/soap/envelope/"><soap:Body><ns2:requestLoanResponse
                        xmlns:ns2="http://service.parabank.parasoft.com/"><ns2:loanResponse><responseDate>2024-11-26T23:45:11.858Z</responseDate><loanProviderName>Wealth
                        Securities Dynamic Loans (WSDL)</loanProviderName><approved>true</approved></ns2:loanResponse></ns2:requestLoanResponse></soap:Body></soap:Envelope>
                      - downPayment
                      - 100
                      - loanAmount
                      - 5000
                      row:
                        refs:
                        - first: false
                          last: true
                          dataSourceName: loan_data
                          row: 3
                        first: false
                  - invocations:
                    - requestTimeNanos: 1088771590795700
                      responseTimeNanos: 1088771634377500
                      invKey:
                        description: http://18.237.146.177:8091/parabank/services/LoanProcessor
                        seqNum: 1
                      request: true
                      requestMessage:
                        contentEncoding: UTF-8
                        content: PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiPz48U09BUC1FTlY6RW52ZWxvcGUgeG1sbnM6U09BUC1FTlY9Imh0dHA6Ly9zY2hlbWFzLnhtbHNvYXAub3JnL3NvYXAvZW52ZWxvcGUvIiB4bWxuczp4c2Q9Imh0dHA6Ly93d3cudzMub3JnLzIwMDEvWE1MU2NoZW1hIiB4bWxuczp4c2k9Imh0dHA6Ly93d3cudzMub3JnLzIwMDEvWE1MU2NoZW1hLWluc3RhbmNlIj48U09BUC1FTlY6Qm9keT48cmVxdWVzdExvYW4geG1sbnM9Imh0dHA6Ly9zZXJ2aWNlLnBhcmFiYW5rLnBhcmFzb2Z0LmNvbS8iPjxsb2FuUmVxdWVzdD48cmVxdWVzdERhdGUgeG1sbnM9IiI+MjAyMy0wNy0yNFQyMzowODo0MS45NTFaPC9yZXF1ZXN0RGF0ZT48Y3VzdG9tZXJJZCB4bWxucz0iIj4xMjIxMjwvY3VzdG9tZXJJZD48YXZhaWxhYmxlRnVuZHMgeG1sbnM9IiI+MTM5Mi42NzwvYXZhaWxhYmxlRnVuZHM+PGxvYW5BbW91bnQgeG1sbnM9IiI+MTAwMDAwMDwvbG9hbkFtb3VudD48ZG93blBheW1lbnQgeG1sbnM9IiI+MTwvZG93blBheW1lbnQ+PC9sb2FuUmVxdWVzdD48L3JlcXVlc3RMb2FuPjwvU09BUC1FTlY6Qm9keT48L1NPQVAtRU5WOkVudmVsb3BlPg==
                        endpoint: http://18.237.146.177:8091/parabank/services/LoanProcessor
                        type: 1
                        httpHeader: "POST /parabank/services/LoanProcessor HTTP/1.1\r\
                          \nHost: 18.237.146.177:8091\r\nContent-Type: text/xml; charset=UTF-8\r\
                          \nContent-Length: 592\r\nSOAPAction: \"\"\r\nAccept: */*\r\
                          \nUser-Agent: Apache-CXF/3.5.5\r\nCache-Control: no-cache\r\
                          \nPragma: no-cache"
                        mimeType: true
                        mimeTypeObj:
                          extensions:
                          - xml
                          isXML: true
                          isText: true
                          type: text/xml
                      response: true
                      responseMessage:
                        contentEncoding: UTF-8
                        content: PHNvYXA6RW52ZWxvcGUgeG1sbnM6c29hcD0iaHR0cDovL3NjaGVtYXMueG1sc29hcC5vcmcvc29hcC9lbnZlbG9wZS8iPjxzb2FwOkJvZHk+PG5zMjpyZXF1ZXN0TG9hblJlc3BvbnNlIHhtbG5zOm5zMj0iaHR0cDovL3NlcnZpY2UucGFyYWJhbmsucGFyYXNvZnQuY29tLyI+PG5zMjpsb2FuUmVzcG9uc2U+PHJlc3BvbnNlRGF0ZT4yMDI0LTExLTI2VDIzOjQ1OjExLjc1Nlo8L3Jlc3BvbnNlRGF0ZT48bG9hblByb3ZpZGVyTmFtZT5XZWFsdGggU2VjdXJpdGllcyBEeW5hbWljIExvYW5zIChXU0RMKTwvbG9hblByb3ZpZGVyTmFtZT48YXBwcm92ZWQ+ZmFsc2U8L2FwcHJvdmVkPjxtZXNzYWdlPmVycm9yLmluc3VmZmljaWVudC5mdW5kczwvbWVzc2FnZT48L25zMjpsb2FuUmVzcG9uc2U+PC9uczI6cmVxdWVzdExvYW5SZXNwb25zZT48L3NvYXA6Qm9keT48L3NvYXA6RW52ZWxvcGU+
                        endpoint: http://18.237.146.177:8091/parabank/services/LoanProcessor
                        type: 2
                        httpHeader: "HTTP/1.1 200 \r\nContent-Type: text/xml;charset=UTF-8\r\
                          \nContent-Length: 444\r\nDate: Tue, 26 Nov 2024 23:45:11\
                          \ GMT"
                        mimeType: true
                        mimeTypeObj:
                          extensions:
                          - xml
                          isXML: true
                          isText: true
                          type: text/xml
                      writeRequestTime: true
                      requestTime: 1732664711794
                      writeResponseTime: true
                      responseTime: 1732664711837
                    seqKey:
                      keys:
                      - ""
                      - ""
                      - "Test 1: Envelope"
                      - <soap:Envelope xmlns:soap="http://schemas.xmlsoap.org/soap/envelope/"><soap:Body><ns2:requestLoanResponse
                        xmlns:ns2="http://service.parabank.parasoft.com/"><ns2:loanResponse><responseDate>2024-11-26T23:45:11.669Z</responseDate><loanProviderName>Wealth
                        Securities Dynamic Loans (WSDL)</loanProviderName><approved>false</approved><message>error.insufficient.funds</message></ns2:loanResponse></ns2:requestLoanResponse></soap:Body></soap:Envelope>
                      - downPayment
                      - 1
                      - loanAmount
                      - 1000000
                      row:
                        refs:
                        - first: false
                          dataSourceName: loan_data
                          row: 2
                        first: false
                        last: false
                  - invocations:
                    - requestTimeNanos: 1088771398292300
                      responseTimeNanos: 1088771442606000
                      invKey:
                        description: http://18.237.146.177:8091/parabank/services/LoanProcessor
                        seqNum: 1
                      request: true
                      requestMessage:
                        contentEncoding: UTF-8
                        content: PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiPz48U09BUC1FTlY6RW52ZWxvcGUgeG1sbnM6U09BUC1FTlY9Imh0dHA6Ly9zY2hlbWFzLnhtbHNvYXAub3JnL3NvYXAvZW52ZWxvcGUvIiB4bWxuczp4c2Q9Imh0dHA6Ly93d3cudzMub3JnLzIwMDEvWE1MU2NoZW1hIiB4bWxuczp4c2k9Imh0dHA6Ly93d3cudzMub3JnLzIwMDEvWE1MU2NoZW1hLWluc3RhbmNlIj48U09BUC1FTlY6Qm9keT48cmVxdWVzdExvYW4geG1sbnM9Imh0dHA6Ly9zZXJ2aWNlLnBhcmFiYW5rLnBhcmFzb2Z0LmNvbS8iPjxsb2FuUmVxdWVzdD48cmVxdWVzdERhdGUgeG1sbnM9IiI+MjAyMy0wNy0yNFQyMzowODo0MS45NTFaPC9yZXF1ZXN0RGF0ZT48Y3VzdG9tZXJJZCB4bWxucz0iIj4xMjIxMjwvY3VzdG9tZXJJZD48YXZhaWxhYmxlRnVuZHMgeG1sbnM9IiI+MTM5Mi42NzwvYXZhaWxhYmxlRnVuZHM+PGxvYW5BbW91bnQgeG1sbnM9IiI+MTAwMDwvbG9hbkFtb3VudD48ZG93blBheW1lbnQgeG1sbnM9IiI+MTAwPC9kb3duUGF5bWVudD48L2xvYW5SZXF1ZXN0PjwvcmVxdWVzdExvYW4+PC9TT0FQLUVOVjpCb2R5PjwvU09BUC1FTlY6RW52ZWxvcGU+
                        endpoint: http://18.237.146.177:8091/parabank/services/LoanProcessor
                        type: 1
                        httpHeader: "POST /parabank/services/LoanProcessor HTTP/1.1\r\
                          \nHost: 18.237.146.177:8091\r\nContent-Type: text/xml; charset=UTF-8\r\
                          \nContent-Length: 591\r\nSOAPAction: \"\"\r\nAccept: */*\r\
                          \nUser-Agent: Apache-CXF/3.5.5\r\nCache-Control: no-cache\r\
                          \nPragma: no-cache"
                        mimeType: true
                        mimeTypeObj:
                          extensions:
                          - xml
                          isXML: true
                          isText: true
                          type: text/xml
                      response: true
                      responseMessage:
                        contentEncoding: UTF-8
                        content: PHNvYXA6RW52ZWxvcGUgeG1sbnM6c29hcD0iaHR0cDovL3NjaGVtYXMueG1sc29hcC5vcmcvc29hcC9lbnZlbG9wZS8iPjxzb2FwOkJvZHk+PG5zMjpyZXF1ZXN0TG9hblJlc3BvbnNlIHhtbG5zOm5zMj0iaHR0cDovL3NlcnZpY2UucGFyYWJhbmsucGFyYXNvZnQuY29tLyI+PG5zMjpsb2FuUmVzcG9uc2U+PHJlc3BvbnNlRGF0ZT4yMDI0LTExLTI2VDIzOjQ1OjExLjU2Mlo8L3Jlc3BvbnNlRGF0ZT48bG9hblByb3ZpZGVyTmFtZT5XZWFsdGggU2VjdXJpdGllcyBEeW5hbWljIExvYW5zIChXU0RMKTwvbG9hblByb3ZpZGVyTmFtZT48YXBwcm92ZWQ+dHJ1ZTwvYXBwcm92ZWQ+PC9uczI6bG9hblJlc3BvbnNlPjwvbnMyOnJlcXVlc3RMb2FuUmVzcG9uc2U+PC9zb2FwOkJvZHk+PC9zb2FwOkVudmVsb3BlPg==
                        endpoint: http://18.237.146.177:8091/parabank/services/LoanProcessor
                        type: 2
                        httpHeader: "HTTP/1.1 200 \r\nContent-Type: text/xml;charset=UTF-8\r\
                          \nContent-Length: 400\r\nDate: Tue, 26 Nov 2024 23:45:11\
                          \ GMT"
                        mimeType: true
                        mimeTypeObj:
                          extensions:
                          - xml
                          isXML: true
                          isText: true
                          type: text/xml
                      writeRequestTime: true
                      requestTime: 1732664711601
                      writeResponseTime: true
                      responseTime: 1732664711645
                    seqKey:
                      keys:
                      - ""
                      - ""
                      - "Test 1: Envelope"
                      - <soap:Envelope xmlns:soap="http://schemas.xmlsoap.org/soap/envelope/"><soap:Body><ns2:requestLoanResponse
                        xmlns:ns2="http://service.parabank.parasoft.com/"><ns2:loanResponse><responseDate>2024-11-26T23:45:11.473Z</responseDate><loanProviderName>Wealth
                        Securities Dynamic Loans (WSDL)</loanProviderName><approved>true</approved></ns2:loanResponse></ns2:requestLoanResponse></soap:Body></soap:Envelope>
                      - downPayment
                      - 100
                      - loanAmount
                      - 1000
                      row:
                        refs:
                        - dataSourceName: loan_data
                          row: 1
                        last: false
                  testName: requestLoan (v2)
                  writeTimestamp: true
                  timestamp: 1732664711661
                showRequestHeaders: true
                showResponseHeaders: true
              name: Traffic Object
          callContainer:
            transportProperties:
              manager:
                protocol: 1
                properties:
                - $type: SoapClientHTTPProperties
                  followRedirects:
                    bool: true
                  common:
                    method:
                      values:
                      - $type: ScriptedValue
                      fixedValue:
                        $type: HTTPMethodTestValue
                        method: POST
                    httpHeaders:
                      properties:
                      - name: content-type
                        value:
                          fixedValue:
                            $type: StringTestValue
                            value: text/xml; charset=UTF-8
                      - name: accept
                        value:
                          fixedValue:
                            $type: StringTestValue
                            value: '*/*'
                      - name: user-agent
                        value:
                          fixedValue:
                            $type: StringTestValue
                            value: Apache-CXF/3.5.5
                      - name: cache-control
                        value:
                          fixedValue:
                            $type: StringTestValue
                            value: no-cache
                      - name: pragma
                        value:
                          fixedValue:
                            $type: StringTestValue
                            value: no-cache
                  keepAlive1_1:
                    bool: true
                  soapAction:
                    sendSoapAction: true
                - $type: SoapClientHTTPProperties
                  followRedirects:
                    bool: true
                  common:
                    method:
                      values:
                      - $type: ScriptedValue
                      fixedValue:
                        $type: HTTPMethodTestValue
                        method: POST
                    httpHeaders:
                      properties:
                      - name: content-type
                        value:
                          fixedValue:
                            $type: StringTestValue
                            value: text/xml; charset=UTF-8
                      - name: accept
                        value:
                          fixedValue:
                            $type: StringTestValue
                            value: '*/*'
                      - name: user-agent
                        value:
                          fixedValue:
                            $type: StringTestValue
                            value: Apache-CXF/3.5.5
                      - name: cache-control
                        value:
                          fixedValue:
                            $type: StringTestValue
                            value: no-cache
                      - name: pragma
                        value:
                          fixedValue:
                            $type: StringTestValue
                            value: no-cache
                  protocol: 1
                  keepAlive1_1:
                    bool: true
                  soapAction:
                    sendSoapAction: true
                - $type: SoapClientWcfProperties
                  protocol: 7
                - $type: SoapClientWcfProperties
                  protocol: 8
                - $type: JNDIProperties
                  msgExpiration:
                    $type: JMSMessageExpiration
                  bytesMessageReadMethod:
                    string: readUTF()
                  responseCorrelation:
                    correlationId:
                      name: JMSCorrelationID
                      value:
                        values:
                        - $type: ScriptedValue
                        fixedValue:
                          $type: StringTestValue
                    messageSelector: ""
                  queueProperties:
                    jmsDestination:
                      name: JMSDestination
                      value:
                        values:
                        - $type: ScriptedValue
                        fixedValue:
                          $type: StringTestValue
                          value: JMS_RequestQueue
                    jmsReplyTo:
                      name: JMSReplyTo
                      value:
                        values:
                        - $type: ScriptedValue
                        fixedValue:
                          $type: StringTestValue
                          value: JMS_ResponseQueue
                  msgType:
                    string: javax.jms.TextMessage
                  useP2P:
                    bool: true
                  connProperties:
                    jmsFactory:
                      name: Connection Factory
                      value:
                        fixedValue:
                          $type: StringTestValue
                          value: MQ_JMS_MANAGER
                    jndiFactory:
                      name: Initial Context
                      value:
                        fixedValue:
                          $type: StringTestValue
                          value: com.sun.jndi.fscontext.RefFSContextFactory
                    providerURL:
                      name: Provider URL
                      value:
                        fixedValue:
                          $type: StringTestValue
                          value: file:/C:/JNDI-Directory
                    auth:
                      service:
                        name: Service
                        value:
                          fixedValue:
                            $type: StringTestValue
                      username:
                        name: Username
                        value:
                          fixedValue:
                            $type: StringTestValue
                      password:
                        name: Password
                        value:
                          fixedValue:
                            $type: PasswordTestValue
                  useSync: true
                - $type: SonicMQJNDIProperties
                  msgExpiration:
                    $type: JMSMessageExpiration
                  bytesMessageReadMethod:
                    string: readUTF()
                  responseCorrelation:
                    correlationId:
                      name: JMSCorrelationID
                      value:
                        values:
                        - $type: ScriptedValue
                        fixedValue:
                          $type: StringTestValue
                    messageSelector: ""
                  queueProperties:
                    jmsDestination:
                      name: JMSDestination
                      value:
                        values:
                        - $type: ScriptedValue
                        fixedValue:
                          $type: StringTestValue
                          value: JMS_RequestQueue
                    jmsReplyTo:
                      name: JMSReplyTo
                      value:
                        values:
                        - $type: ScriptedValue
                        fixedValue:
                          $type: StringTestValue
                          value: JMS_ResponseQueue
                  msgType:
                    string: progress.message.jclient.MultipartMessage
                  useP2P:
                    bool: true
                  connProperties:
                    initialContextProps:
                    - name: java.naming.security.credentials
                      value:
                        fixedValue:
                          $type: StringTestValue
                          value: Administrator
                    - name: java.naming.security.principal
                      value:
                        fixedValue:
                          $type: StringTestValue
                          value: Administrator
                    jmsFactory:
                      name: Connection Factory
                      value:
                        fixedValue:
                          $type: StringTestValue
                          value: ConnectionFactory
                    jndiFactory:
                      name: Initial Context
                      value:
                        fixedValue:
                          $type: StringTestValue
                          value: com.sonicsw.jndi.mfcontext.MFContextFactory
                    providerURL:
                      name: Provider URL
                      value:
                        fixedValue:
                          $type: StringTestValue
                          value: "tcp://[hostname]:2506"
                    auth:
                      service:
                        name: Service
                        value:
                          fixedValue:
                            $type: StringTestValue
                      username:
                        name: Username
                        value:
                          fixedValue:
                            $type: StringTestValue
                            value: Administrator
                      password:
                        name: Password
                        value:
                          fixedValue:
                            $type: PasswordTestValue
                  useSync: true
                  partContentID:
                    string: part1
                - $type: MQProperties
                  mqrfh2fields:
                    version:
                      name: Version
                      value:
                        fixedValue:
                          $type: StringTestValue
                    encoding:
                      name: Encoding
                      value:
                        fixedValue:
                          $type: StringTestValue
                    codedCharSetId:
                      name: CodedCharSetId
                      value:
                        fixedValue:
                          $type: StringTestValue
                    format:
                      name: Format
                      value:
                        fixedValue:
                          $type: StringTestValue
                    flags:
                      name: Flags
                      value:
                        fixedValue:
                          $type: StringTestValue
                    nameValueCodedCharSetId:
                      name: NameValueCodedCharSetId
                      value:
                        fixedValue:
                          $type: StringTestValue
                  mcd:
                    msd:
                      name: Message Service Domain
                      value:
                        fixedValue:
                          $type: StringTestValue
                    set:
                      name: Message Set
                      value:
                        fixedValue:
                          $type: StringTestValue
                    type:
                      name: Message Type
                      value:
                        fixedValue:
                          $type: StringTestValue
                    fmt:
                      name: Output Format
                      value:
                        fixedValue:
                          $type: StringTestValue
                  psc:
                    subIdentity:
                      name: SubIdentity
                      value:
                        fixedValue:
                          $type: StringTestValue
                    qName:
                      name: QName
                      value:
                        fixedValue:
                          $type: StringTestValue
                    qMgrName:
                      name: QMgrName
                      value:
                        fixedValue:
                          $type: StringTestValue
                    subPoint:
                      name: SubPoint
                      value:
                        fixedValue:
                          $type: StringTestValue
                    filter:
                      name: Filter
                      value:
                        fixedValue:
                          $type: StringTestValue
                    subName:
                      name: SubName
                      value:
                        fixedValue:
                          $type: StringTestValue
                    subUserData:
                      name: SubUserData
                      value:
                        fixedValue:
                          $type: StringTestValue
                  jms:
                    destination:
                      name: Destination
                      value:
                        fixedValue:
                          $type: StringTestValue
                    replyTo:
                      name: Reply To
                      value:
                        fixedValue:
                          $type: StringTestValue
                    timestamp:
                      name: Timestamp
                      value:
                        fixedValue:
                          $type: StringTestValue
                    expiration:
                      name: Expiration
                      value:
                        fixedValue:
                          $type: StringTestValue
                    correlationId:
                      name: Correlation Id
                      value:
                        fixedValue:
                          $type: StringTestValue
                    priority:
                      name: Priority
                      value:
                        fixedValue:
                          $type: StringTestValue
                    deliveryMode:
                      name: Delivery Mode
                      value:
                        fixedValue:
                          $type: StringTestValue
                  mqQueueManager:
                    ccsid:
                      name: CCSID
                      value:
                        fixedValue:
                          $type: StringTestValue
                  mqSSL:
                    peerName:
                      name: Peer Name
                      value:
                        fixedValue:
                          $type: StringTestValue
                    cipherSuite:
                      $type: EnumNameValuePair
                      name: CipherSuite
                      value:
                        fixedValue:
                          $type: StringTestValue
                  conn:
                    putManagerId:
                      name: Put Manager Id
                      value:
                        fixedValue:
                          $type: StringTestValue
                    getManagerId:
                      name: Get Manager Id
                      value:
                        fixedValue:
                          $type: StringTestValue
                    channel:
                      name: Channel
                      value:
                        fixedValue:
                          $type: StringTestValue
                          value: CHANNEL1
                    host:
                      name: Host
                      value:
                        fixedValue:
                          $type: StringTestValue
                          value: host
                    port:
                      name: Port
                      value:
                        fixedValue:
                          $type: StringTestValue
                          value: 1414
                    manager:
                      name: Queue Manager
                      value:
                        fixedValue:
                          $type: StringTestValue
                          value: queue.manager.1
                    putQueue:
                      name: Put Queue
                      value:
                        fixedValue:
                          $type: StringTestValue
                          value: PutQueue
                    getQueue:
                      name: Get Queue
                      value:
                        fixedValue:
                          $type: StringTestValue
                          value: GetQueue
                    messageID:
                      name: Message ID
                      value:
                        fixedValue:
                          $type: StringTestValue
                          value: Message ID
                    auth:
                      service:
                        name: Service
                        value:
                          fixedValue:
                            $type: StringTestValue
                      username:
                        name: Username
                        value:
                          fixedValue:
                            $type: StringTestValue
                      password:
                        name: Password
                        value:
                          fixedValue:
                            $type: PasswordTestValue
                  mqpmMisc:
                    applicationIdData:
                      name: Application ID data
                      value:
                        fixedValue:
                          $type: StringTestValue
                    correlationID:
                      name: Correlation ID
                      value:
                        fixedValue:
                          $type: StringTestValue
                    expiry:
                      name: Expiry (in tenths of a second)
                      value:
                        fixedValue:
                          $type: StringTestValue
                          value: -1
                    messageSequenceNumber:
                      name: Message sequence number
                      value:
                        fixedValue:
                          $type: StringTestValue
                    replyToQueueManagerName:
                      name: Reply queue manager name
                      value:
                        fixedValue:
                          $type: StringTestValue
                    replyToQueueName:
                      name: Reply queue name
                      value:
                        fixedValue:
                          $type: StringTestValue
                    putApplicationName:
                      name: Put application name
                      value:
                        fixedValue:
                          $type: StringTestValue
                    applicationOriginData:
                      name: Originating application data
                      value:
                        fixedValue:
                          $type: StringTestValue
                    userId:
                      name: User ID
                      value:
                        fixedValue:
                          $type: StringTestValue
                  mqgmMisc:
                    correlationID:
                      name: Correlation Id
                      value:
                        fixedValue:
                          $type: StringTestValue
                    waitInterval:
                      name: Wait Interval(in milliseconds)
                      value:
                        fixedValue:
                          $type: StringTestValue
                          value: -1
                - $type: RMIProperties
                  hostName:
                    name: Host
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: Host
                  portNumber:
                    name: Port
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: Port
                  bindingName:
                    name: Binding
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: Binding
                  remoteInterface:
                    name: Remote Interface
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: Remote Interface
                  methodName:
                    name: Method Name
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: Method Name
                - $type: SMTPConnectionProperties
                  port:
                    name: Port
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: 25
                  host:
                    name: SMTP Host
                    value:
                      fixedValue:
                        $type: StringTestValue
                  user:
                    name: Username
                    value:
                      fixedValue:
                        $type: StringTestValue
                  pass:
                    name: Password
                    value:
                      fixedValue:
                        $type: PasswordTestValue
                        password: AwAAAAA=
                  fromEmail:
                    name: From Email
                    value:
                      fixedValue:
                        $type: StringTestValue
                  toEmail:
                    name: To Email
                    value:
                      fixedValue:
                        $type: StringTestValue
                  subject:
                    name: Subject
                    value:
                      fixedValue:
                        $type: StringTestValue
                - $type: TIBCOProperties
                  timeLimit:
                    name: Time Limit
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: 0
                  service:
                    name: ""
                    value:
                      fixedValue:
                        $type: StringTestValue
                  network:
                    name: ""
                    value:
                      fixedValue:
                        $type: StringTestValue
                  daemon:
                    name: DAEMON
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: DAEMON
                  sendSubject:
                    name: Send Subject
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: Send Subject
                  replySubject:
                    name: Reply Field Name
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: Reply Field Name
                  sendFieldName:
                    name: Send Field Name
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: Send Field Name
                  replyFieldName:
                    name: Reply Field Name
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: Reply Field Name
                - $type: NoneTransportProperties
                - $type: CustomTransportProperties
                  selected: 0
                  configs:
                  - $type: CustomTransportConfigurationImpl
                    ConfigClassName: com.parasoft.soavirt.transport.mqtt.MqttTransport
                    values:
                      customValueMap:
                      - broker
                      - $type: MultiValueCustomValue
                      - clean
                      - $type: MultiValueCustomValue
                      - client_id
                      - $type: MultiValueCustomValue
                      - connection_timeout
                      - $type: MultiValueCustomValue
                      - keep_alive
                      - $type: MultiValueCustomValue
                      - keymanager_factory
                      - $type: MultiValueCustomValue
                      - keystore_file
                      - $type: MultiValueCustomValue
                      - keystore_password
                      - $type: MultiValueCustomValue
                      - keystore_type
                      - $type: MultiValueCustomValue
                      - log_level
                      - $type: MultiValueCustomValue
                      - lwt_qos
                      - $type: MultiValueCustomValue
                      - lwt_retained
                      - $type: MultiValueCustomValue
                      - lwt_topic
                      - $type: MultiValueCustomValue
                      - password
                      - $type: MultiValueCustomValue
                      - persist_dir
                      - $type: MultiValueCustomValue
                      - publish_qos
                      - $type: MultiValueCustomValue
                      - publish_retained
                      - $type: MultiValueCustomValue
                      - publish_topic
                      - $type: MultiValueCustomValue
                      - tls_protocol
                      - $type: MultiValueCustomValue
                      - trustmanager_factory
                      - $type: MultiValueCustomValue
                      - truststore_file
                      - $type: MultiValueCustomValue
                      - truststore_password
                      - $type: MultiValueCustomValue
                      - truststore_type
                      - $type: MultiValueCustomValue
                      - username
                      - $type: MultiValueCustomValue
                      - will
                      - $type: MultiValueCustomValue
                    className: com.parasoft.soavirt.transport.mqtt.MqttTransport
                    name: MQTT
              messageExchangePattern:
                inverted: true
            soapCall: true
            soapCallObj:
              soapMethod: true
              soapMethodObj:
                soapParameters:
                - value:
                    $type: ElementValue
                    writeType: true
                    hasReference: true
                    qnameAsString: http://service.parabank.parasoft.com/:requestLoan
                    replacedColumn: ""
                    values:
                    - $type: ComplexValue
                      replacedColumn: ""
                      compositorValue: true
                      compositorValueObj:
                        replacedColumn: ""
                        values:
                          $type: CompositorValueSetCollectionSet
                          set:
                          - $type: CompositorValueSet
                            values:
                            - $type: ElementValue
                              replacedColumn: ""
                              values:
                              - $type: ComplexValue
                                replacedColumn: ""
                                compositorValue: true
                                compositorValueObj:
                                  replacedColumn: ""
                                  values:
                                    $type: CompositorValueSetCollectionSet
                                    set:
                                    - $type: CompositorValueSet
                                      values:
                                      - $type: ElementValue
                                        replacedColumn: ""
                                        values:
                                        - $type: DateTimeValue
                                          replacedColumn: ""
                                          allowArrayExclude: true
                                          value: 2023-07-24T23:08:41.951Z
                                          customFormat: ""
                                      - $type: ElementValue
                                        replacedColumn: ""
                                        values:
                                        - $type: IntegerValue
                                          replacedColumn: ""
                                          validate: false
                                          value: 12212
                                      - $type: ElementValue
                                        replacedColumn: ""
                                        values:
                                        - $type: DecimalValue
                                          replacedColumn: ""
                                          validate: false
                                          value: 1392.67
                                      - $type: ElementValue
                                        replacedColumn: ""
                                        values:
                                        - $type: DecimalValue
                                          replacedColumn: ""
                                          validate: false
                                          mode: 3
                                          columnName: loanAmount
                                          value: 5000
                                      - $type: ElementValue
                                        replacedColumn: ""
                                        values:
                                        - $type: DecimalValue
                                          replacedColumn: ""
                                          validate: false
                                          mode: 3
                                          columnName: downPayment
                                          value: 100
                  name: parameters
                beautify: false
                longName: requestLoan
                styleUseProperties:
                  targetObjectURI: http://service.parabank.parasoft.com/
                  encodingStyleURI: null
                serviceAddress:
                  $type: SOAPServiceAddress
                  portName: LoanProcessorServiceImplPort
                  address: http://18.237.146.177:8091/parabank/services/LoanProcessor
                returnParam: true
                returnParamObj:
                  value:
                    $type: ElementValue
                    writeType: true
                    hasReference: true
                    qnameAsString: http://service.parabank.parasoft.com/:requestLoanResponse
                    replacedColumn: ""
                    values:
                    - $type: ComplexValue
                      replacedColumn: ""
                      compositorValue: true
                      compositorValueObj:
                        replacedColumn: ""
                        values:
                          $type: CompositorValueSetCollectionSet
                          set:
                          - $type: CompositorValueSet
                            values:
                            - $type: ElementValue
                              replacedColumn: ""
                              values:
                              - $type: ComplexValue
                                replacedColumn: ""
                                compositorValue: true
                                compositorValueObj:
                                  replacedColumn: ""
                                  values:
                                    $type: CompositorValueSetCollectionSet
                                    set:
                                    - $type: CompositorValueSet
                                      values:
                                      - $type: ElementValue
                                        replacedColumn: ""
                                      - $type: ElementValue
                                        replacedColumn: ""
                                        values:
                                        - $type: StringValue
                                          replacedColumn: ""
                                          value: ""
                                      - $type: ElementValue
                                        replacedColumn: ""
                                        values:
                                        - $type: BooleanValue
                                          replacedColumn: ""
                                          value: "true"
                                      - $type: ElementValue
                                        replacedColumn: ""
                                      - $type: ElementValue
                                        replacedColumn: ""
                  name: parameters
                methodName: requestLoan
                returnType: "{http://service.parabank.parasoft.com/}requestLoanResponse"
              inputMode: 1
              inputUsable: true
              literal:
                use: 1
                text:
                  SOAPClient_LiteralMessage: |-
                    <?xml version="1.0" encoding="UTF-8"?>
                    <soap:Envelope xmlns:soap="http://schemas.xmlsoap.org/soap/envelope/">
                     <soap:Body>
                      <ns2:requestLoan xmlns:ns2="http://service.parabank.parasoft.com/">
                       <ns2:loanRequest>
                        <requestDate xmlns="">2023-07-24T22:27:03.030Z</requestDate>
                        <customerId xmlns="">12212</customerId>
                        <availableFunds xmlns="">1392.67</availableFunds>
                        <loanAmount xmlns="">1000000</loanAmount>
                        <downPayment xmlns="">1</downPayment>
                       </ns2:loanRequest>
                      </ns2:requestLoan>
                     </soap:Body>
                    </soap:Envelope>
                  type: text/xml
              userMethod: true
              xmlBuilder: true
              formXML:
                rootNodeExists: true
                rootNode:
                  $type: XMLElementNode
                  value: ""
                  name: Envelope
                  namespace: true
                  prefix: soap
                  uri: http://schemas.xmlsoap.org/soap/envelope/
                  childNodes:
                  - $type: XMLNamespaceNode
                    prefix: soap
                    uri: http://schemas.xmlsoap.org/soap/envelope/
                  - $type: XMLElementNode
                    value: ""
                    name: Body
                    namespace: true
                    prefix: soap
                    uri: http://schemas.xmlsoap.org/soap/envelope/
                    childNodes:
                    - $type: XMLElementNode
                      value: ""
                      name: requestLoan
                      namespace: true
                      prefix: ns2
                      uri: http://service.parabank.parasoft.com/
                      childNodes:
                      - $type: XMLNamespaceNode
                        prefix: ns2
                        uri: http://service.parabank.parasoft.com/
                      - $type: XMLElementNode
                        excludeColumnName: "Accounts: accountBalance"
                        value: ""
                        name: loanRequest
                        namespace: true
                        prefix: ns2
                        uri: http://service.parabank.parasoft.com/
                        childNodes:
                        - $type: XMLElementNode
                          value: 2023-07-24T22:27:03.030Z
                          name: requestDate
                          childNodes:
                          - $type: XMLNamespaceNode
                            prefix: ""
                            uri: ""
                        - $type: XMLElementNode
                          value: 12212
                          name: customerId
                          childNodes:
                          - $type: XMLNamespaceNode
                            prefix: ""
                            uri: ""
                        - $type: XMLElementNode
                          value: 1392.67
                          name: availableFunds
                          childNodes:
                          - $type: XMLNamespaceNode
                            prefix: ""
                            uri: ""
                        - $type: XMLElementNode
                          value: 1000000
                          name: loanAmount
                          childNodes:
                          - $type: XMLNamespaceNode
                            prefix: ""
                            uri: ""
                        - $type: XMLElementNode
                          value: 1
                          name: downPayment
                          childNodes:
                          - $type: XMLNamespaceNode
                            prefix: ""
                            uri: ""
          responseFormat: 2
          mimeType: text/plain
    - $type: TestSuite
      testLogic: true
      testID: 767
      enabled: true
      name: REST
      profileMappingID: 0
      maxProfileMappingID: 1
      nextIdentifier: 1
      tests:
      - $type: RESTClientToolTest
        testLogic: true
        testFlowLogic:
          condition: true
        testID: 768
        enabled: true
        name: "/customers/{customerId}/accounts - GET"
        performanceGroup: 10
        tool:
          $type: RESTClient
          iconName: RESTClient
          name: /billpay - POST (v1)
          outputTools:
          - $type: GenericDataBank
            iconName: XMLDataBank
            name: JSON Data Bank
            wrappedTool:
              $type: XMLtoDataSource
              iconName: XMLDataBank
              name: XML Data Bank
              selectedXPaths:
              - elementOption: 1
                contentOption: 2
                XMLDataBank_ExtractXPath: /root
                target: 1
                mode: 1
              canonicalizeOutput: true
              xmlMessage: true
              virtualDSCreator:
                writableColumns:
                - customName: "Test 1: root 3"
            conversionStrategy:
              dataFormatName: JSON
              conversionStrategyId: JSON
              conversionStrategyClassName: com.parasoft.xml.convert.json.JsonConversionStrategy
          formJson:
            builtFromSchema: true
            value:
              $type: ElementValue
              writeType: true
              type:
                $type: ElementType
                hash: 1
                localName: root
                bodyType:
                  $type: ComplexType
                  hash: 2
                  attributes:
                  - hash: 3
                    ns: ""
                    name: type
                    defaultValue: object
                    fixed: object
                    contentType:
                      $type: StringType
                      hash: 4
                    required: true
                  name: /components/schemas/Payee
                  compositor: true
                  compositorObj:
                    $type: AllCompositor
                    hash: 5
                    types:
                    - $type: ElementType
                      hash: 6
                      minOccurs: 0
                      localName: name
                      bodyType:
                        $type: ComplexType
                        hash: 7
                        attributes:
                        - hash: 8
                          ns: ""
                          name: type
                          defaultValue: string
                          fixed: string
                          contentType:
                            $type: StringType
                            hash: 4
                          required: true
                        content: true
                        contentObj:
                          $type: StringType
                          hash: 4
                        namespace: urn:parasoft:json
                        name: string
                        compositor: true
                        compositorObj:
                          $type: SequenceCompositor
                          hash: 9
                    - $type: ElementType
                      hash: 10
                      minOccurs: 0
                      localName: address
                      bodyType:
                        $type: ComplexType
                        hash: 11
                        attributes:
                        - hash: 12
                          ns: ""
                          name: type
                          defaultValue: object
                          fixed: object
                          contentType:
                            $type: StringType
                            hash: 4
                          required: true
                        name: /components/schemas/Address
                        compositor: true
                        compositorObj:
                          $type: AllCompositor
                          hash: 13
                          types:
                          - $type: ElementType
                            hash: 14
                            minOccurs: 0
                            localName: street
                            bodyType:
                              $type: ComplexType
                              hash: 7
                          - $type: ElementType
                            hash: 15
                            minOccurs: 0
                            localName: city
                            bodyType:
                              $type: ComplexType
                              hash: 7
                          - $type: ElementType
                            hash: 16
                            minOccurs: 0
                            localName: state
                            bodyType:
                              $type: ComplexType
                              hash: 7
                          - $type: ElementType
                            hash: 17
                            minOccurs: 0
                            localName: zipCode
                            bodyType:
                              $type: ComplexType
                              hash: 7
                    - $type: ElementType
                      hash: 18
                      minOccurs: 0
                      localName: phoneNumber
                      bodyType:
                        $type: ComplexType
                        hash: 7
                    - $type: ElementType
                      hash: 19
                      minOccurs: 0
                      localName: accountNumber
                      bodyType:
                        $type: ComplexType
                        hash: 20
                        attributes:
                        - hash: 21
                          ns: ""
                          name: type
                          defaultValue: number
                          fixed: number
                          contentType:
                            $type: StringType
                            hash: 4
                          required: true
                        content: true
                        contentObj:
                          $type: IntegerType
                          hash: 22
                        namespace: urn:parasoft:json
                        name: number
                        compositor: true
                        compositorObj:
                          $type: SequenceCompositor
                          hash: 23
              replacedColumn: ""
              values:
              - $type: ComplexValue
                replacedColumn: ""
                attributes:
                - replacedColumn: ""
                  value:
                    $type: StringValue
                    replacedColumn: ""
                    value: object
                  useValue: true
                compositorValue: true
                compositorValueObj:
                  replacedColumn: ""
                  values:
                    $type: CompositorValueSetCollectionSet
                    set:
                    - $type: CompositorValueSet
                      values:
                      - $type: ElementValue
                        replacedColumn: ""
                        values:
                        - $type: ComplexValue
                          replacedColumn: ""
                          allowArrayExclude: true
                          attributes:
                          - replacedColumn: ""
                            value:
                              $type: StringValue
                              replacedColumn: ""
                              value: string
                            useValue: true
                          contentValue: true
                          contentValueObj:
                            $type: StringValue
                            replacedColumn: ""
                            value: Wilhelm Haaker
                          compositorValue: true
                          compositorValueObj:
                            replacedColumn: ""
                            values:
                              $type: CompositorValueSetCollectionSet
                              set:
                              - $type: CompositorValueSet
                      - $type: ElementValue
                        replacedColumn: ""
                        values:
                        - $type: ComplexValue
                          replacedColumn: ""
                          allowArrayExclude: true
                          attributes:
                          - replacedColumn: ""
                            value:
                              $type: StringValue
                              replacedColumn: ""
                              value: object
                            useValue: true
                          compositorValue: true
                          compositorValueObj:
                            replacedColumn: ""
                            values:
                              $type: CompositorValueSetCollectionSet
                              set:
                              - $type: CompositorValueSet
                                values:
                                - $type: ElementValue
                                  replacedColumn: ""
                                  values:
                                  - $type: ComplexValue
                                    replacedColumn: ""
                                    allowArrayExclude: true
                                    attributes:
                                    - replacedColumn: ""
                                      value:
                                        $type: StringValue
                                        replacedColumn: ""
                                        value: string
                                      useValue: true
                                    contentValue: true
                                    contentValueObj:
                                      $type: StringValue
                                      replacedColumn: ""
                                      value: 101 E. Huntington Drive
                                    compositorValue: true
                                    compositorValueObj:
                                      replacedColumn: ""
                                      values:
                                        $type: CompositorValueSetCollectionSet
                                        set:
                                        - $type: CompositorValueSet
                                - $type: ElementValue
                                  replacedColumn: ""
                                  values:
                                  - $type: ComplexValue
                                    replacedColumn: ""
                                    allowArrayExclude: true
                                    attributes:
                                    - replacedColumn: ""
                                      value:
                                        $type: StringValue
                                        replacedColumn: ""
                                        value: string
                                      useValue: true
                                    contentValue: true
                                    contentValueObj:
                                      $type: StringValue
                                      replacedColumn: ""
                                      value: Monrovia
                                    compositorValue: true
                                    compositorValueObj:
                                      replacedColumn: ""
                                      values:
                                        $type: CompositorValueSetCollectionSet
                                        set:
                                        - $type: CompositorValueSet
                                - $type: ElementValue
                                  replacedColumn: ""
                                  values:
                                  - $type: ComplexValue
                                    replacedColumn: ""
                                    allowArrayExclude: true
                                    attributes:
                                    - replacedColumn: ""
                                      value:
                                        $type: StringValue
                                        replacedColumn: ""
                                        value: string
                                      useValue: true
                                    contentValue: true
                                    contentValueObj:
                                      $type: StringValue
                                      replacedColumn: ""
                                      value: CA
                                    compositorValue: true
                                    compositorValueObj:
                                      replacedColumn: ""
                                      values:
                                        $type: CompositorValueSetCollectionSet
                                        set:
                                        - $type: CompositorValueSet
                                - $type: ElementValue
                                  replacedColumn: ""
                                  values:
                                  - $type: ComplexValue
                                    replacedColumn: ""
                                    allowArrayExclude: true
                                    attributes:
                                    - replacedColumn: ""
                                      value:
                                        $type: StringValue
                                        replacedColumn: ""
                                        value: string
                                      useValue: true
                                    contentValue: true
                                    contentValueObj:
                                      $type: StringValue
                                      replacedColumn: ""
                                      value: 91016
                                    compositorValue: true
                                    compositorValueObj:
                                      replacedColumn: ""
                                      values:
                                        $type: CompositorValueSetCollectionSet
                                        set:
                                        - $type: CompositorValueSet
                      - $type: ElementValue
                        replacedColumn: ""
                        values:
                        - $type: ComplexValue
                          replacedColumn: ""
                          allowArrayExclude: true
                          attributes:
                          - replacedColumn: ""
                            value:
                              $type: StringValue
                              replacedColumn: ""
                              value: string
                            useValue: true
                          contentValue: true
                          contentValueObj:
                            $type: StringValue
                            replacedColumn: ""
                            value: 123-4569-7890
                          compositorValue: true
                          compositorValueObj:
                            replacedColumn: ""
                            values:
                              $type: CompositorValueSetCollectionSet
                              set:
                              - $type: CompositorValueSet
                      - $type: ElementValue
                        replacedColumn: ""
                        values:
                        - $type: ComplexValue
                          replacedColumn: ""
                          allowArrayExclude: true
                          attributes:
                          - replacedColumn: ""
                            value:
                              $type: StringValue
                              replacedColumn: ""
                              value: number
                            useValue: true
                          contentValue: true
                          contentValueObj:
                            $type: IntegerValue
                            replacedColumn: ""
                            value: 54321
                          compositorValue: true
                          compositorValueObj:
                            replacedColumn: ""
                            values:
                              $type: CompositorValueSetCollectionSet
                              set:
                              - $type: CompositorValueSet
            elementTypeName: root
          hasServiceInfo: true
          serviceInfo:
            serviceDescriptor:
              $type: StandardServiceDescriptor
              location: http://18.237.146.177:8090/parabank/services/bank/openapi.yaml
          jsonBuilder:
            hasValue: true
            value:
              $type: JSONObjectValue
              nameIsNull: true
          schemaURL:
            MessagingClient_SchemaLocation: "${SWAGGER}"
          formInput:
            value:
              $type: ElementValue
              writeType: true
              hasReference: true
              qnameAsString: ":"
              replacedColumn: ""
              values:
              - $type: ComplexValue
                replacedColumn: ""
                compositorValue: true
                compositorValueObj:
                  replacedColumn: ""
                  values:
                    $type: CompositorValueSetCollectionSet
                    set:
                    - $type: CompositorValueSet
          jmsMessageOutputProvider:
            $type: JMSMessageOutputProvider
            jmsOutputProviderRequest:
              $type: JMSOutputProvider
              name: Request Object
              menuName: Object
            jmsOutputProviderResponse:
              $type: JMSOutputProvider
              name: Response Message Object
              menuName: Message Object
          validResponseRange:
            validResponseRange:
              values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                validResponseRange: 200
          router:
            values:
            - $type: ScriptedValue
            fixedValue:
              $type: StringTestValue
              HTTPClient_Endpoint: "http://${SV_HOST}:8090/parabank/services/bank/customers/12212/accounts?_type=json"
          urlParameters:
            properties:
            - name: _type
              value:
                values:
                - $type: ScriptedValue
                fixedValue:
                  $type: StringTestValue
                  value: json
          transportProperties:
            manager:
              properties:
              - $type: HTTPClientHTTPProperties
                followRedirects:
                  bool: true
                common:
                  auth:
                    useDefault: false
                    customType: 1
                  method:
                    values:
                    - $type: ScriptedValue
                    fixedValue:
                      $type: HTTPMethodTestValue
                      method: GET
                  httpHeaders:
                    properties:
                    - name: Accept
                      value:
                        values:
                        - $type: ScriptedValue
                        fixedValue:
                          $type: StringTestValue
                          value: application/json
                keepAlive1_1:
                  bool: true
              - $type: HTTPClientHTTPProperties
                followRedirects:
                  bool: true
                common:
                  auth:
                    useDefault: false
                    customType: 1
                  method:
                    values:
                    - $type: ScriptedValue
                    fixedValue:
                      $type: HTTPMethodTestValue
                      method: GET
                  httpHeaders:
                    properties:
                    - name: Accept
                      value:
                        values:
                        - $type: ScriptedValue
                        fixedValue:
                          $type: StringTestValue
                          value: application/json
                protocol: 1
                keepAlive1_1:
                  bool: true
              - $type: NoneTransportProperties
            messageExchangePattern:
              inverted: true
          outputProviders:
            requestHeader:
              $type: HTTPNamedToolOutputProvider
              menuName: Transport Header
              name: Request Transport Header
            responseHeader:
              $type: HTTPNamedToolOutputProvider
              menuName: Transport Header
              name: Response Transport Header
            xmlRequestOutput:
              $type: NamedXMLToolOutputProvider
              menuName: Traffic
              name: Request Traffic
            trafficOutput:
              m_name: Traffic Stream
            objectOutput:
              $type: ObjectOutputProvider
              outputTools:
              - $type: TrafficViewer
                iconName: TrafficViewer
                name: Traffic Viewer
                showRequestHeaders: true
              name: Traffic Object
          literal:
            use: 1
            text:
              MessagingClient_LiteralMessage: "{\"name\":\"Wilhelm Haaker\",\"address\"\
                :{\"street\":\"101 E. Huntington Drive\",\"city\":\"Monrovia\",\"\
                state\":\"CA\",\"zipCode\":\"91016\"},\"phoneNumber\":\"123-4569-7890\"\
                ,\"accountNumber\":54321}"
              type: application/json
            dataSource:
              columnName: accountBalance
          mode: Form JSON
          literalQuery:
            isPropertiesRef: true
          constrainedQuery:
            parameters:
            - $type: ElementValue
              writeType: true
              hasReference: true
              qnameAsString: :accountId
              replacedColumn: ""
              values:
              - $type: IntegerValue
                replacedColumn: ""
                value: 12345
            - $type: ElementValue
              writeType: true
              hasReference: true
              qnameAsString: :amount
              replacedColumn: ""
              values:
              - $type: DecimalValue
                replacedColumn: ""
                value: 10.0
          literalPath:
            pathElements:
            - values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                value: parabank
            - values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                value: services
            - values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                value: bank
            - values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                value: customers
            - values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                value: 12212
            - values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                value: accounts
          resourceMethod:
            resourceId: /billpay
            httpMethod: POST
          resourceMode: 3
          baseUrl:
            values:
            - $type: ScriptedValue
            - $type: WadlTestValue
              value: http://18.237.146.177:8090/parabank/services/bank
            fixedValue:
              $type: StringTestValue
            selectedIndex: 1
      - $type: RESTClientToolTest
        testLogic: true
        testFlowLogic:
          condition: true
        testID: 769
        enabled: true
        name: "/customers/{customerId}/accounts - GET 2"
        performanceGroup: 10
        tool:
          $type: RESTClient
          iconName: RESTClient
          name: /billpay - POST (v2)
          outputTools:
          - $type: DiffTool
            iconName: Diff
            name: Diff
            differs:
            - $type: BinaryDiffer
              source:
                optionsSource: 1
            - $type: TextDiffer
            - $type: XMLDifferNew
              formXml:
                formXML:
                  rootNodeExists: true
                  rootNode:
                    $type: XMLElementNode
                    value: ""
                    name: NewElement
                    showAttributes: true
              hasSoapControlSource: true
              soapControlSource:
                $type: SoapDiffControlSource
            - $type: JSONDiffer
            source:
              optionsSource: 3
              dataSourceColumn: "Test 1: root 3"
            mode: 3
          formJson:
            builtFromSchema: true
            value:
              $type: ElementValue
              writeType: true
              type:
                $type: ElementType
                hash: 1
                localName: root
                bodyType:
                  $type: ComplexType
                  hash: 2
                  attributes:
                  - hash: 3
                    ns: ""
                    name: type
                    defaultValue: object
                    fixed: object
                    contentType:
                      $type: StringType
                      hash: 4
                    required: true
                  name: /components/schemas/Payee
                  compositor: true
                  compositorObj:
                    $type: AllCompositor
                    hash: 5
                    types:
                    - $type: ElementType
                      hash: 6
                      minOccurs: 0
                      localName: name
                      bodyType:
                        $type: ComplexType
                        hash: 7
                        attributes:
                        - hash: 8
                          ns: ""
                          name: type
                          defaultValue: string
                          fixed: string
                          contentType:
                            $type: StringType
                            hash: 4
                          required: true
                        content: true
                        contentObj:
                          $type: StringType
                          hash: 4
                        namespace: urn:parasoft:json
                        name: string
                        compositor: true
                        compositorObj:
                          $type: SequenceCompositor
                          hash: 9
                    - $type: ElementType
                      hash: 10
                      minOccurs: 0
                      localName: address
                      bodyType:
                        $type: ComplexType
                        hash: 11
                        attributes:
                        - hash: 12
                          ns: ""
                          name: type
                          defaultValue: object
                          fixed: object
                          contentType:
                            $type: StringType
                            hash: 4
                          required: true
                        name: /components/schemas/Address
                        compositor: true
                        compositorObj:
                          $type: AllCompositor
                          hash: 13
                          types:
                          - $type: ElementType
                            hash: 14
                            minOccurs: 0
                            localName: street
                            bodyType:
                              $type: ComplexType
                              hash: 7
                          - $type: ElementType
                            hash: 15
                            minOccurs: 0
                            localName: city
                            bodyType:
                              $type: ComplexType
                              hash: 7
                          - $type: ElementType
                            hash: 16
                            minOccurs: 0
                            localName: state
                            bodyType:
                              $type: ComplexType
                              hash: 7
                          - $type: ElementType
                            hash: 17
                            minOccurs: 0
                            localName: zipCode
                            bodyType:
                              $type: ComplexType
                              hash: 7
                    - $type: ElementType
                      hash: 18
                      minOccurs: 0
                      localName: contactInformation
                      bodyType:
                        $type: ComplexType
                        hash: 19
                        attributes:
                        - hash: 20
                          ns: ""
                          name: type
                          defaultValue: object
                          fixed: object
                          contentType:
                            $type: StringType
                            hash: 4
                          required: true
                        name: /components/schemas/ContactInformation
                        compositor: true
                        compositorObj:
                          $type: AllCompositor
                          hash: 21
                          types:
                          - $type: ElementType
                            hash: 22
                            minOccurs: 0
                            localName: phoneNumber
                            bodyType:
                              $type: ComplexType
                              hash: 7
                          - $type: ElementType
                            hash: 23
                            minOccurs: 0
                            localName: email
                            bodyType:
                              $type: ComplexType
                              hash: 7
                    - $type: ElementType
                      hash: 24
                      minOccurs: 0
                      localName: accountNumber
                      bodyType:
                        $type: ComplexType
                        hash: 25
                        attributes:
                        - hash: 26
                          ns: ""
                          name: type
                          defaultValue: number
                          fixed: number
                          contentType:
                            $type: StringType
                            hash: 4
                          required: true
                        content: true
                        contentObj:
                          $type: IntegerType
                          hash: 27
                        namespace: urn:parasoft:json
                        name: number
                        compositor: true
                        compositorObj:
                          $type: SequenceCompositor
                          hash: 28
              replacedColumn: ""
              values:
              - $type: ComplexValue
                replacedColumn: ""
                attributes:
                - replacedColumn: ""
                  value:
                    $type: StringValue
                    replacedColumn: ""
                    value: object
                  useValue: true
                compositorValue: true
                compositorValueObj:
                  replacedColumn: ""
                  values:
                    $type: CompositorValueSetCollectionSet
                    set:
                    - $type: CompositorValueSet
                      values:
                      - $type: ElementValue
                        replacedColumn: ""
                        values:
                        - $type: ComplexValue
                          replacedColumn: ""
                          allowArrayExclude: true
                          attributes:
                          - replacedColumn: ""
                            value:
                              $type: StringValue
                              replacedColumn: ""
                              value: string
                            useValue: true
                          contentValue: true
                          contentValueObj:
                            $type: StringValue
                            replacedColumn: ""
                            value: Wilhelm Haaker
                          compositorValue: true
                          compositorValueObj:
                            replacedColumn: ""
                            values:
                              $type: CompositorValueSetCollectionSet
                              set:
                              - $type: CompositorValueSet
                      - $type: ElementValue
                        replacedColumn: ""
                        values:
                        - $type: ComplexValue
                          replacedColumn: ""
                          allowArrayExclude: true
                          attributes:
                          - replacedColumn: ""
                            value:
                              $type: StringValue
                              replacedColumn: ""
                              value: object
                            useValue: true
                          compositorValue: true
                          compositorValueObj:
                            replacedColumn: ""
                            values:
                              $type: CompositorValueSetCollectionSet
                              set:
                              - $type: CompositorValueSet
                                values:
                                - $type: ElementValue
                                  replacedColumn: ""
                                  values:
                                  - $type: ComplexValue
                                    replacedColumn: ""
                                    allowArrayExclude: true
                                    attributes:
                                    - replacedColumn: ""
                                      value:
                                        $type: StringValue
                                        replacedColumn: ""
                                        value: string
                                      useValue: true
                                    contentValue: true
                                    contentValueObj:
                                      $type: StringValue
                                      replacedColumn: ""
                                      value: 101 E. Huntington Drive
                                    compositorValue: true
                                    compositorValueObj:
                                      replacedColumn: ""
                                      values:
                                        $type: CompositorValueSetCollectionSet
                                        set:
                                        - $type: CompositorValueSet
                                - $type: ElementValue
                                  replacedColumn: ""
                                  values:
                                  - $type: ComplexValue
                                    replacedColumn: ""
                                    allowArrayExclude: true
                                    attributes:
                                    - replacedColumn: ""
                                      value:
                                        $type: StringValue
                                        replacedColumn: ""
                                        value: string
                                      useValue: true
                                    contentValue: true
                                    contentValueObj:
                                      $type: StringValue
                                      replacedColumn: ""
                                      value: Monrovia
                                    compositorValue: true
                                    compositorValueObj:
                                      replacedColumn: ""
                                      values:
                                        $type: CompositorValueSetCollectionSet
                                        set:
                                        - $type: CompositorValueSet
                                - $type: ElementValue
                                  replacedColumn: ""
                                  values:
                                  - $type: ComplexValue
                                    replacedColumn: ""
                                    allowArrayExclude: true
                                    attributes:
                                    - replacedColumn: ""
                                      value:
                                        $type: StringValue
                                        replacedColumn: ""
                                        value: string
                                      useValue: true
                                    contentValue: true
                                    contentValueObj:
                                      $type: StringValue
                                      replacedColumn: ""
                                      value: CA
                                    compositorValue: true
                                    compositorValueObj:
                                      replacedColumn: ""
                                      values:
                                        $type: CompositorValueSetCollectionSet
                                        set:
                                        - $type: CompositorValueSet
                                - $type: ElementValue
                                  replacedColumn: ""
                                  values:
                                  - $type: ComplexValue
                                    replacedColumn: ""
                                    allowArrayExclude: true
                                    attributes:
                                    - replacedColumn: ""
                                      value:
                                        $type: StringValue
                                        replacedColumn: ""
                                        value: string
                                      useValue: true
                                    contentValue: true
                                    contentValueObj:
                                      $type: StringValue
                                      replacedColumn: ""
                                      value: 91016
                                    compositorValue: true
                                    compositorValueObj:
                                      replacedColumn: ""
                                      values:
                                        $type: CompositorValueSetCollectionSet
                                        set:
                                        - $type: CompositorValueSet
                      - $type: ElementValue
                        replacedColumn: ""
                        values:
                        - $type: ComplexValue
                          replacedColumn: ""
                          allowArrayExclude: true
                          attributes:
                          - replacedColumn: ""
                            value:
                              $type: StringValue
                              replacedColumn: ""
                              value: object
                            useValue: true
                          compositorValue: true
                          compositorValueObj:
                            replacedColumn: ""
                            values:
                              $type: CompositorValueSetCollectionSet
                              set:
                              - $type: CompositorValueSet
                                values:
                                - $type: ElementValue
                                  replacedColumn: ""
                                  values:
                                  - $type: ComplexValue
                                    replacedColumn: ""
                                    allowArrayExclude: true
                                    attributes:
                                    - replacedColumn: ""
                                      value:
                                        $type: StringValue
                                        replacedColumn: ""
                                        value: string
                                      useValue: true
                                    contentValue: true
                                    contentValueObj:
                                      $type: StringValue
                                      replacedColumn: ""
                                      value: 123-456-7890
                                    compositorValue: true
                                    compositorValueObj:
                                      replacedColumn: ""
                                      values:
                                        $type: CompositorValueSetCollectionSet
                                        set:
                                        - $type: CompositorValueSet
                                - $type: ElementValue
                                  replacedColumn: ""
                                  values:
                                  - $type: ComplexValue
                                    replacedColumn: ""
                                    allowArrayExclude: true
                                    attributes:
                                    - replacedColumn: ""
                                      value:
                                        $type: StringValue
                                        replacedColumn: ""
                                        value: string
                                      useValue: true
                                    contentValue: true
                                    contentValueObj:
                                      $type: StringValue
                                      replacedColumn: ""
                                      value: whaaker@parasoft.com
                                    compositorValue: true
                                    compositorValueObj:
                                      replacedColumn: ""
                                      values:
                                        $type: CompositorValueSetCollectionSet
                                        set:
                                        - $type: CompositorValueSet
                      - $type: ElementValue
                        replacedColumn: ""
                        values:
                        - $type: ComplexValue
                          replacedColumn: ""
                          allowArrayExclude: true
                          attributes:
                          - replacedColumn: ""
                            value:
                              $type: StringValue
                              replacedColumn: ""
                              value: number
                            useValue: true
                          contentValue: true
                          contentValueObj:
                            $type: IntegerValue
                            replacedColumn: ""
                            value: 54321
                          compositorValue: true
                          compositorValueObj:
                            replacedColumn: ""
                            values:
                              $type: CompositorValueSetCollectionSet
                              set:
                              - $type: CompositorValueSet
            elementTypeName: root
          hasServiceInfo: true
          serviceInfo:
            serviceDescriptor:
              $type: StandardServiceDescriptor
              location: http://18.237.146.177:8091/parabank/services/bank/openapi.yaml
          jsonBuilder:
            hasValue: true
            value:
              $type: JSONObjectValue
              nameIsNull: true
          schemaURL:
            MessagingClient_SchemaLocation: http://18.237.146.177:8091/parabank/services/bank/openapi.yaml
          formInput:
            value:
              $type: ElementValue
              writeType: true
              hasReference: true
              qnameAsString: ":"
              replacedColumn: ""
              values:
              - $type: ComplexValue
                replacedColumn: ""
                compositorValue: true
                compositorValueObj:
                  replacedColumn: ""
                  values:
                    $type: CompositorValueSetCollectionSet
                    set:
                    - $type: CompositorValueSet
          jmsMessageOutputProvider:
            $type: JMSMessageOutputProvider
            jmsOutputProviderRequest:
              $type: JMSOutputProvider
              name: Request Object
              menuName: Object
            jmsOutputProviderResponse:
              $type: JMSOutputProvider
              name: Response Message Object
              menuName: Message Object
          validResponseRange:
            validResponseRange:
              values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                validResponseRange: 200
          router:
            values:
            - $type: ScriptedValue
            fixedValue:
              $type: StringTestValue
              HTTPClient_Endpoint: "http://${SV_HOST}:8091/parabank/services/bank/customers/12212/accounts?_type=json"
          urlParameters:
            properties:
            - name: _type
              value:
                values:
                - $type: ScriptedValue
                fixedValue:
                  $type: StringTestValue
                  value: json
          transportProperties:
            manager:
              properties:
              - $type: HTTPClientHTTPProperties
                followRedirects:
                  bool: true
                common:
                  auth:
                    useDefault: false
                    customType: 1
                  method:
                    values:
                    - $type: ScriptedValue
                    fixedValue:
                      $type: HTTPMethodTestValue
                      method: GET
                  httpHeaders:
                    properties:
                    - name: Accept
                      value:
                        values:
                        - $type: ScriptedValue
                        fixedValue:
                          $type: StringTestValue
                          value: application/json
                keepAlive1_1:
                  bool: true
              - $type: HTTPClientHTTPProperties
                followRedirects:
                  bool: true
                common:
                  auth:
                    useDefault: false
                    customType: 1
                  method:
                    values:
                    - $type: ScriptedValue
                    fixedValue:
                      $type: HTTPMethodTestValue
                      method: GET
                  httpHeaders:
                    properties:
                    - name: Accept
                      value:
                        values:
                        - $type: ScriptedValue
                        fixedValue:
                          $type: StringTestValue
                          value: application/json
                protocol: 1
                keepAlive1_1:
                  bool: true
              - $type: NoneTransportProperties
            messageExchangePattern:
              inverted: true
          outputProviders:
            requestHeader:
              $type: HTTPNamedToolOutputProvider
              menuName: Transport Header
              name: Request Transport Header
            responseHeader:
              $type: HTTPNamedToolOutputProvider
              menuName: Transport Header
              name: Response Transport Header
            xmlRequestOutput:
              $type: NamedXMLToolOutputProvider
              menuName: Traffic
              name: Request Traffic
            trafficOutput:
              m_name: Traffic Stream
            objectOutput:
              $type: ObjectOutputProvider
              outputTools:
              - $type: TrafficViewer
                iconName: TrafficViewer
                name: Traffic Viewer
                showRequestHeaders: true
                showResponseHeaders: true
              name: Traffic Object
          literal:
            use: 1
            text:
              MessagingClient_LiteralMessage: "{\"name\":\"Wilhelm Haaker\",\"address\"\
                :{\"street\":\"101 E. Huntington Drive\",\"city\":\"Monrovia\",\"\
                state\":\"CA\",\"zipCode\":\"91016\"},\"phoneNumber\":\"123-4569-7890\"\
                ,\"accountNumber\":54321}"
              type: application/json
            dataSource:
              columnName: accountBalance
          mode: Form JSON
          literalQuery:
            isPropertiesRef: true
          constrainedQuery:
            parameters:
            - $type: ElementValue
              writeType: true
              hasReference: true
              qnameAsString: :accountId
              replacedColumn: ""
              values:
              - $type: IntegerValue
                replacedColumn: ""
                value: 12345
            - $type: ElementValue
              writeType: true
              hasReference: true
              qnameAsString: :amount
              replacedColumn: ""
              values:
              - $type: DecimalValue
                replacedColumn: ""
                value: 10.0
          literalPath:
            pathElements:
            - values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                value: parabank
            - values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                value: services
            - values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                value: bank
            - values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                value: customers
            - values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                value: 12212
            - values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                value: accounts
          resourceMethod:
            resourceId: /billpay
            httpMethod: POST
          resourceMode: 3
          baseUrl:
            values:
            - $type: ScriptedValue
            - $type: WadlTestValue
              value: http://18.237.146.177:8091/parabank/services/bank
            fixedValue:
              $type: StringTestValue
              value: "http://${SV_HOST}:8091/parabank/services/bank"
  - $type: TestSuite
    testLogic: true
    testFlowLogic:
      condition: true
    testID: 770
    enabled: true
    name: API Authentication Testing
    profileMappingID: 0
    maxProfileMappingID: 1
    nextIdentifier: 395
    tests:
    - $type: TestSuite
      testLogic: true
      testFlowLogic:
        condition: true
      testID: 771
      enabled: true
      name: OAuth Client Credentials
      profileMappingID: 0
      maxProfileMappingID: 1
      nextIdentifier: 783
      tests:
      - $type: TestSuite
        testLogic: true
        testID: 774
        enabled: true
        name: Test /login - Authorized
        profileMappingID: 0
        maxProfileMappingID: 1
        nextIdentifier: 1
        tests:
        - $type: RESTClientToolTest
          testLogic: true
          testFlowLogic:
            condition: true
          testID: 775
          enabled: true
          name: REST Client
          tool:
            $type: RESTClient
            iconName: RESTClient
            name: /virtual/auth
            outputTools:
            - $type: GenericDataBank
              iconName: XMLDataBank
              name: JSON Data Bank
              wrappedTool:
                $type: XMLtoDataSource
                iconName: XMLDataBank
                name: XML Data Bank
                selectedXPaths:
                - elementOption: 1
                  contentOption: 1
                  XMLDataBank_ExtractXPath: "/root/token[1]/text()"
                  mode: 1
                canonicalizeOutput: true
                xmlMessage: true
                virtualDSCreator:
                  writableColumns:
                  - customName: auth_token
              conversionStrategy:
                dataFormatName: JSON
                conversionStrategyId: JSON
                conversionStrategyClassName: com.parasoft.xml.convert.json.JsonConversionStrategy
            formJson:
              value:
                $type: ElementValue
                writeType: true
                type:
                  $type: ElementType
                  hash: 1
                  localName: root
                  bodyType:
                    $type: ComplexType
                    hash: 2
                    attributes:
                    - hash: 3
                      ns: ""
                      name: type
                      fixed: object
                      contentType:
                        $type: StringType
                        hash: 4
                      required: true
                    name: rootType
                    compositor: true
                    compositorObj:
                      $type: AllCompositor
                      hash: 5
                replacedColumn: ""
                values:
                - $type: ComplexValue
                  replacedColumn: ""
                  attributes:
                  - replacedColumn: ""
                    value:
                      $type: StringValue
                      replacedColumn: ""
                      value: object
                      xmlEncoding: 2
                    useValue: true
                  compositorValue: true
                  compositorValueObj:
                    replacedColumn: ""
                    values:
                      $type: CompositorValueSetCollectionSet
                      set:
                      - $type: CompositorValueSet
              elementTypeName: root
            jsonBuilder:
              hasValue: true
              value:
                $type: JSONObjectValue
                nameIsNull: true
            formInput:
              value:
                $type: ElementValue
                writeType: true
                hasReference: true
                qnameAsString: ":"
                replacedColumn: ""
                values:
                - $type: ComplexValue
                  replacedColumn: ""
                  compositorValue: true
                  compositorValueObj:
                    replacedColumn: ""
                    values:
                      $type: CompositorValueSetCollectionSet
                      set:
                      - $type: CompositorValueSet
            constrainToSchema: false
            postDataTable:
              properties:
              - name: username
                value:
                  values:
                  - $type: ScriptedValue
                  - $type: RelativeLocationTestValue
                  fixedValue:
                    $type: StringTestValue
                    value: john
              - name: password
                value:
                  values:
                  - $type: ScriptedValue
                  - $type: RelativeLocationTestValue
                  fixedValue:
                    $type: StringTestValue
                    value: demo
            jmsMessageOutputProvider:
              $type: JMSMessageOutputProvider
              jmsOutputProviderRequest:
                $type: JMSOutputProvider
                name: Request Object
                menuName: Object
              jmsOutputProviderResponse:
                $type: JMSOutputProvider
                name: Response Message Object
                menuName: Message Object
            router:
              values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                HTTPClient_Endpoint: http://localhost:9080/Auth0/auth?getToken=true
            urlParameters:
              properties:
              - name: getToken
                value:
                  values:
                  - $type: ScriptedValue
                  fixedValue:
                    $type: StringTestValue
                    value: "true"
            transportProperties:
              manager:
                properties:
                - $type: HTTPClientHTTPProperties
                  followRedirects:
                    bool: true
                  common:
                    auth:
                      useDefault: false
                      customType: 1
                    method:
                      values:
                      - $type: ScriptedValue
                      fixedValue:
                        $type: HTTPMethodTestValue
                        method: POST
                  keepAlive1_1:
                    bool: true
                - $type: HTTPClientHTTPProperties
                  followRedirects:
                    bool: true
                  common:
                    auth:
                      useDefault: false
                      customType: 1
                    method:
                      values:
                      - $type: ScriptedValue
                      fixedValue:
                        $type: HTTPMethodTestValue
                        method: POST
                  protocol: 1
                  keepAlive1_1:
                    bool: true
                - $type: NoneTransportProperties
              messageExchangePattern:
                inverted: true
            outputProviders:
              requestHeader:
                $type: HTTPNamedToolOutputProvider
                menuName: Transport Header
                name: Request Transport Header
              responseHeader:
                $type: HTTPNamedToolOutputProvider
                menuName: Transport Header
                name: Response Transport Header
              xmlRequestOutput:
                $type: NamedXMLToolOutputProvider
                menuName: Traffic
                name: Request Traffic
              trafficOutput:
                m_name: Traffic Stream
              objectOutput:
                $type: ObjectOutputProvider
                outputTools:
                - $type: TrafficViewer
                  iconName: TrafficViewer
                  name: Traffic Viewer
                  showRequestHeaders: true
                  showResponseHeaders: true
                name: Traffic Object
            literal:
              use: 1
              text:
                MessagingClient_LiteralMessage: |-
                  {
                      "username" : "att",
                      "password" : "demo"
                  }
                type: application/json
              dataSource:
                columnName: "Accounts: accountBalance"
            mode: Literal
            literalQuery:
              isPropertiesRef: true
            literalPath:
              pathElements:
              - values:
                - $type: ScriptedValue
                fixedValue:
                  $type: StringTestValue
                  value: Auth0
              - values:
                - $type: ScriptedValue
                fixedValue:
                  $type: StringTestValue
                  value: auth
            resourceMethod:
              httpMethod: GET
            baseUrl:
              values:
              - $type: ScriptedValue
              - $type: WadlTestValue
              fixedValue:
                $type: StringTestValue
              selectedIndex: 1
        - $type: RESTClientToolTest
          testLogic: true
          testFlowLogic:
            condition: true
          testID: 776
          enabled: true
          name: REST Client
          tool:
            $type: RESTClient
            iconName: RESTClient
            name: /virtual/login
            formJson:
              value:
                $type: ElementValue
                writeType: true
                hasReference: true
                qnameAsString: :root
                replacedColumn: ""
                values:
                - $type: ComplexValue
                  replacedColumn: ""
                  attributes:
                  - replacedColumn: ""
                    value:
                      $type: StringValue
                      replacedColumn: ""
                      value: object
                      xmlEncoding: 2
                    useValue: true
                  compositorValue: true
                  compositorValueObj:
                    replacedColumn: ""
                    values:
                      $type: CompositorValueSetCollectionSet
                      set:
                      - $type: CompositorValueSet
              elementTypeName: root
            jsonBuilder:
              hasValue: true
              value:
                $type: JSONObjectValue
                nameIsNull: true
            formInput:
              value:
                $type: ElementValue
                writeType: true
                hasReference: true
                qnameAsString: ":"
                replacedColumn: ""
                values:
                - $type: ComplexValue
                  replacedColumn: ""
                  compositorValue: true
                  compositorValueObj:
                    replacedColumn: ""
                    values:
                      $type: CompositorValueSetCollectionSet
                      set:
                      - $type: CompositorValueSet
            constrainToSchema: false
            jmsMessageOutputProvider:
              $type: JMSMessageOutputProvider
              jmsOutputProviderRequest:
                $type: JMSOutputProvider
                name: Request Object
                menuName: Object
              jmsOutputProviderResponse:
                $type: JMSOutputProvider
                name: Response Message Object
                menuName: Message Object
            router:
              values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                HTTPClient_Endpoint: http://localhost:9080/Auth0/login
            transportProperties:
              manager:
                properties:
                - $type: HTTPClientHTTPProperties
                  followRedirects:
                    bool: true
                  common:
                    auth:
                      useDefault: false
                      customType: 1
                    method:
                      values:
                      - $type: ScriptedValue
                      fixedValue:
                        $type: HTTPMethodTestValue
                        method: GET
                    httpHeaders:
                      properties:
                      - name: Authorization
                        value:
                          values:
                          - $type: ScriptedValue
                          fixedValue:
                            $type: StringTestValue
                            value: "${auth_token}"
                  keepAlive1_1:
                    bool: true
                - $type: HTTPClientHTTPProperties
                  followRedirects:
                    bool: true
                  common:
                    auth:
                      useDefault: false
                      customType: 1
                    method:
                      values:
                      - $type: ScriptedValue
                      fixedValue:
                        $type: HTTPMethodTestValue
                        method: GET
                    httpHeaders:
                      properties:
                      - name: Authorization
                        value:
                          values:
                          - $type: ScriptedValue
                          fixedValue:
                            $type: StringTestValue
                            value: "${auth_token}"
                  protocol: 1
                  keepAlive1_1:
                    bool: true
                - $type: NoneTransportProperties
              messageExchangePattern:
                inverted: true
            outputProviders:
              requestHeader:
                $type: HTTPNamedToolOutputProvider
                menuName: Transport Header
                name: Request Transport Header
              responseHeader:
                $type: HTTPNamedToolOutputProvider
                menuName: Transport Header
                name: Response Transport Header
              xmlRequestOutput:
                $type: NamedXMLToolOutputProvider
                menuName: Traffic
                name: Request Traffic
              trafficOutput:
                m_name: Traffic Stream
              objectOutput:
                $type: ObjectOutputProvider
                outputTools:
                - $type: TrafficViewer
                  iconName: TrafficViewer
                  name: Traffic Viewer
                  showRequestHeaders: true
                  showResponseHeaders: true
                name: Traffic Object
            literal:
              use: 1
              text:
                MessagingClient_LiteralMessage: ""
                type: application/json
              dataSource:
                columnName: auth_token
            mode: Literal
            literalQuery:
              isPropertiesRef: true
            literalPath:
              pathElements:
              - values:
                - $type: ScriptedValue
                fixedValue:
                  $type: StringTestValue
                  value: Auth0
              - values:
                - $type: ScriptedValue
                fixedValue:
                  $type: StringTestValue
                  value: login
            resourceMethod:
              httpMethod: GET
            baseUrl:
              values:
              - $type: ScriptedValue
              - $type: WadlTestValue
              fixedValue:
                $type: StringTestValue
              selectedIndex: 1
      - $type: TestSuite
        testLogic: true
        testID: 777
        enabled: true
        name: "Test /customers/{customerId} - Unauthorized"
        profileMappingID: 0
        maxProfileMappingID: 1
        nextIdentifier: 1
        tests:
        - $type: RESTClientToolTest
          testLogic: true
          testFlowLogic:
            condition: true
          testID: 778
          enabled: true
          name: REST Client
          tool:
            $type: RESTClient
            iconName: RESTClient
            name: "/customers/{customerId}"
            formJson:
              value:
                $type: ElementValue
                writeType: true
                hasReference: true
                qnameAsString: :root
                replacedColumn: ""
                values:
                - $type: ComplexValue
                  replacedColumn: ""
                  attributes:
                  - replacedColumn: ""
                    value:
                      $type: StringValue
                      replacedColumn: ""
                      value: object
                      xmlEncoding: 2
                    useValue: true
                  compositorValue: true
                  compositorValueObj:
                    replacedColumn: ""
                    values:
                      $type: CompositorValueSetCollectionSet
                      set:
                      - $type: CompositorValueSet
              elementTypeName: root
            jsonBuilder:
              hasValue: true
              value:
                $type: JSONObjectValue
                nameIsNull: true
            formInput:
              value:
                $type: ElementValue
                writeType: true
                hasReference: true
                qnameAsString: ":"
                replacedColumn: ""
                values:
                - $type: ComplexValue
                  replacedColumn: ""
                  compositorValue: true
                  compositorValueObj:
                    replacedColumn: ""
                    values:
                      $type: CompositorValueSetCollectionSet
                      set:
                      - $type: CompositorValueSet
            constrainToSchema: false
            jmsMessageOutputProvider:
              $type: JMSMessageOutputProvider
              jmsOutputProviderRequest:
                $type: JMSOutputProvider
                name: Request Object
                menuName: Object
              jmsOutputProviderResponse:
                $type: JMSOutputProvider
                name: Response Message Object
                menuName: Message Object
            router:
              values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                HTTPClient_Endpoint: http://localhost:9080/Auth0/parabank/services/bank/customers/12212
            transportProperties:
              manager:
                properties:
                - $type: HTTPClientHTTPProperties
                  followRedirects:
                    bool: true
                  common:
                    auth:
                      useDefault: false
                      customType: 1
                    method:
                      values:
                      - $type: ScriptedValue
                      fixedValue:
                        $type: HTTPMethodTestValue
                        method: GET
                    httpHeaders:
                      properties:
                      - name: Authorization
                        value:
                          values:
                          - $type: ScriptedValue
                          fixedValue:
                            $type: StringTestValue
                            value: Bearer badToken123
                  keepAlive1_1:
                    bool: true
                - $type: HTTPClientHTTPProperties
                  followRedirects:
                    bool: true
                  common:
                    auth:
                      useDefault: false
                      customType: 1
                    method:
                      values:
                      - $type: ScriptedValue
                      fixedValue:
                        $type: HTTPMethodTestValue
                        method: GET
                    httpHeaders:
                      properties:
                      - name: Authorization
                        value:
                          values:
                          - $type: ScriptedValue
                          fixedValue:
                            $type: StringTestValue
                            value: Bearer badToken123
                  protocol: 1
                  keepAlive1_1:
                    bool: true
                - $type: NoneTransportProperties
              messageExchangePattern:
                inverted: true
            outputProviders:
              requestHeader:
                $type: HTTPNamedToolOutputProvider
                menuName: Transport Header
                name: Request Transport Header
              responseHeader:
                $type: HTTPNamedToolOutputProvider
                menuName: Transport Header
                name: Response Transport Header
              xmlRequestOutput:
                $type: NamedXMLToolOutputProvider
                menuName: Traffic
                name: Request Traffic
              trafficOutput:
                m_name: Traffic Stream
              objectOutput:
                $type: ObjectOutputProvider
                outputTools:
                - $type: TrafficViewer
                  iconName: TrafficViewer
                  name: Traffic Viewer
                  showRequestHeaders: true
                  showResponseHeaders: true
                name: Traffic Object
            literal:
              use: 1
              text:
                MessagingClient_LiteralMessage: ""
                type: application/json
              dataSource:
                columnName: auth_token
            mode: Literal
            literalQuery:
              isPropertiesRef: true
            literalPath:
              pathElements:
              - values:
                - $type: ScriptedValue
                fixedValue:
                  $type: StringTestValue
                  value: Auth0
              - values:
                - $type: ScriptedValue
                fixedValue:
                  $type: StringTestValue
                  value: parabank
              - values:
                - $type: ScriptedValue
                fixedValue:
                  $type: StringTestValue
                  value: services
              - values:
                - $type: ScriptedValue
                fixedValue:
                  $type: StringTestValue
                  value: bank
              - values:
                - $type: ScriptedValue
                fixedValue:
                  $type: StringTestValue
                  value: customers
              - values:
                - $type: ScriptedValue
                fixedValue:
                  $type: StringTestValue
                  value: 12212
            resourceMethod:
              httpMethod: GET
            baseUrl:
              values:
              - $type: ScriptedValue
              - $type: WadlTestValue
              fixedValue:
                $type: StringTestValue
              selectedIndex: 1
      - $type: TestSuite
        testLogic: true
        testID: 779
        enabled: true
        name: "Test /customers/{customerId} - Authorized"
        profileMappingID: 0
        maxProfileMappingID: 1
        nextIdentifier: 1
        tests:
        - $type: RESTClientToolTest
          testLogic: true
          testFlowLogic:
            condition: true
          testID: 780
          enabled: true
          name: REST Client
          tool:
            $type: RESTClient
            iconName: RESTClient
            name: /virtual/auth
            outputTools:
            - $type: GenericDataBank
              iconName: XMLDataBank
              name: JSON Data Bank
              wrappedTool:
                $type: XMLtoDataSource
                iconName: XMLDataBank
                name: XML Data Bank
                selectedXPaths:
                - elementOption: 1
                  contentOption: 1
                  XMLDataBank_ExtractXPath: "/root/token[1]/text()"
                  mode: 1
                canonicalizeOutput: true
                xmlMessage: true
                virtualDSCreator:
                  writableColumns:
                  - customName: auth_token
              conversionStrategy:
                dataFormatName: JSON
                conversionStrategyId: JSON
                conversionStrategyClassName: com.parasoft.xml.convert.json.JsonConversionStrategy
            formJson:
              value:
                $type: ElementValue
                writeType: true
                hasReference: true
                qnameAsString: :root
                replacedColumn: ""
                values:
                - $type: ComplexValue
                  replacedColumn: ""
                  attributes:
                  - replacedColumn: ""
                    value:
                      $type: StringValue
                      replacedColumn: ""
                      value: object
                      xmlEncoding: 2
                    useValue: true
                  compositorValue: true
                  compositorValueObj:
                    replacedColumn: ""
                    values:
                      $type: CompositorValueSetCollectionSet
                      set:
                      - $type: CompositorValueSet
              elementTypeName: root
            jsonBuilder:
              hasValue: true
              value:
                $type: JSONObjectValue
                nameIsNull: true
            formInput:
              value:
                $type: ElementValue
                writeType: true
                hasReference: true
                qnameAsString: ":"
                replacedColumn: ""
                values:
                - $type: ComplexValue
                  replacedColumn: ""
                  compositorValue: true
                  compositorValueObj:
                    replacedColumn: ""
                    values:
                      $type: CompositorValueSetCollectionSet
                      set:
                      - $type: CompositorValueSet
            constrainToSchema: false
            postDataTable:
              properties:
              - name: username
                value:
                  values:
                  - $type: ScriptedValue
                  - $type: RelativeLocationTestValue
                  fixedValue:
                    $type: StringTestValue
                    value: john
              - name: password
                value:
                  values:
                  - $type: ScriptedValue
                  - $type: RelativeLocationTestValue
                  fixedValue:
                    $type: StringTestValue
                    value: demo
            jmsMessageOutputProvider:
              $type: JMSMessageOutputProvider
              jmsOutputProviderRequest:
                $type: JMSOutputProvider
                name: Request Object
                menuName: Object
              jmsOutputProviderResponse:
                $type: JMSOutputProvider
                name: Response Message Object
                menuName: Message Object
            router:
              values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                HTTPClient_Endpoint: http://localhost:9080/Auth0/auth?getToken=true
            urlParameters:
              properties:
              - name: getToken
                value:
                  values:
                  - $type: ScriptedValue
                  fixedValue:
                    $type: StringTestValue
                    value: "true"
            transportProperties:
              manager:
                properties:
                - $type: HTTPClientHTTPProperties
                  followRedirects:
                    bool: true
                  common:
                    auth:
                      useDefault: false
                      customType: 1
                    method:
                      values:
                      - $type: ScriptedValue
                      fixedValue:
                        $type: HTTPMethodTestValue
                        method: POST
                  keepAlive1_1:
                    bool: true
                - $type: HTTPClientHTTPProperties
                  followRedirects:
                    bool: true
                  common:
                    auth:
                      useDefault: false
                      customType: 1
                    method:
                      values:
                      - $type: ScriptedValue
                      fixedValue:
                        $type: HTTPMethodTestValue
                        method: POST
                  protocol: 1
                  keepAlive1_1:
                    bool: true
                - $type: NoneTransportProperties
              messageExchangePattern:
                inverted: true
            outputProviders:
              requestHeader:
                $type: HTTPNamedToolOutputProvider
                menuName: Transport Header
                name: Request Transport Header
              responseHeader:
                $type: HTTPNamedToolOutputProvider
                menuName: Transport Header
                name: Response Transport Header
              xmlRequestOutput:
                $type: NamedXMLToolOutputProvider
                menuName: Traffic
                name: Request Traffic
              trafficOutput:
                m_name: Traffic Stream
              objectOutput:
                $type: ObjectOutputProvider
                outputTools:
                - $type: TrafficViewer
                  iconName: TrafficViewer
                  name: Traffic Viewer
                  showRequestHeaders: true
                  showResponseHeaders: true
                name: Traffic Object
            literal:
              use: 1
              text:
                MessagingClient_LiteralMessage: |-
                  {
                      "username" : "att",
                      "password" : "demo"
                  }
                type: application/json
              dataSource:
                columnName: "Accounts: accountBalance"
            mode: Literal
            literalQuery:
              isPropertiesRef: true
            literalPath:
              pathElements:
              - values:
                - $type: ScriptedValue
                fixedValue:
                  $type: StringTestValue
                  value: Auth0
              - values:
                - $type: ScriptedValue
                fixedValue:
                  $type: StringTestValue
                  value: auth
            resourceMethod:
              httpMethod: GET
            baseUrl:
              values:
              - $type: ScriptedValue
              - $type: WadlTestValue
              fixedValue:
                $type: StringTestValue
              selectedIndex: 1
        - $type: RESTClientToolTest
          testLogic: true
          testFlowLogic:
            condition: true
          testID: 781
          enabled: true
          name: REST Client
          tool:
            $type: RESTClient
            iconName: RESTClient
            name: "/customers/{customerId}"
            formJson:
              value:
                $type: ElementValue
                writeType: true
                hasReference: true
                qnameAsString: :root
                replacedColumn: ""
                values:
                - $type: ComplexValue
                  replacedColumn: ""
                  attributes:
                  - replacedColumn: ""
                    value:
                      $type: StringValue
                      replacedColumn: ""
                      value: object
                      xmlEncoding: 2
                    useValue: true
                  compositorValue: true
                  compositorValueObj:
                    replacedColumn: ""
                    values:
                      $type: CompositorValueSetCollectionSet
                      set:
                      - $type: CompositorValueSet
              elementTypeName: root
            jsonBuilder:
              hasValue: true
              value:
                $type: JSONObjectValue
                nameIsNull: true
            formInput:
              value:
                $type: ElementValue
                writeType: true
                hasReference: true
                qnameAsString: ":"
                replacedColumn: ""
                values:
                - $type: ComplexValue
                  replacedColumn: ""
                  compositorValue: true
                  compositorValueObj:
                    replacedColumn: ""
                    values:
                      $type: CompositorValueSetCollectionSet
                      set:
                      - $type: CompositorValueSet
            constrainToSchema: false
            jmsMessageOutputProvider:
              $type: JMSMessageOutputProvider
              jmsOutputProviderRequest:
                $type: JMSOutputProvider
                name: Request Object
                menuName: Object
              jmsOutputProviderResponse:
                $type: JMSOutputProvider
                name: Response Message Object
                menuName: Message Object
            router:
              values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                HTTPClient_Endpoint: http://localhost:9080/Auth0/parabank/services/bank/customers/12212
            transportProperties:
              manager:
                properties:
                - $type: HTTPClientHTTPProperties
                  followRedirects:
                    bool: true
                  common:
                    auth:
                      useDefault: false
                      customType: 1
                    method:
                      values:
                      - $type: ScriptedValue
                      fixedValue:
                        $type: HTTPMethodTestValue
                        method: GET
                    httpHeaders:
                      properties:
                      - name: Authorization
                        value:
                          values:
                          - $type: ScriptedValue
                          fixedValue:
                            $type: StringTestValue
                            value: "${auth_token}"
                  keepAlive1_1:
                    bool: true
                - $type: HTTPClientHTTPProperties
                  followRedirects:
                    bool: true
                  common:
                    auth:
                      useDefault: false
                      customType: 1
                    method:
                      values:
                      - $type: ScriptedValue
                      fixedValue:
                        $type: HTTPMethodTestValue
                        method: GET
                    httpHeaders:
                      properties:
                      - name: Authorization
                        value:
                          values:
                          - $type: ScriptedValue
                          fixedValue:
                            $type: StringTestValue
                            value: "${auth_token}"
                  protocol: 1
                  keepAlive1_1:
                    bool: true
                - $type: NoneTransportProperties
              messageExchangePattern:
                inverted: true
            outputProviders:
              requestHeader:
                $type: HTTPNamedToolOutputProvider
                menuName: Transport Header
                name: Request Transport Header
              responseHeader:
                $type: HTTPNamedToolOutputProvider
                menuName: Transport Header
                name: Response Transport Header
              xmlRequestOutput:
                $type: NamedXMLToolOutputProvider
                menuName: Traffic
                name: Request Traffic
              trafficOutput:
                m_name: Traffic Stream
              objectOutput:
                $type: ObjectOutputProvider
                outputTools:
                - $type: TrafficViewer
                  iconName: TrafficViewer
                  name: Traffic Viewer
                  showRequestHeaders: true
                  showResponseHeaders: true
                name: Traffic Object
            literal:
              use: 1
              text:
                MessagingClient_LiteralMessage: ""
                type: application/json
              dataSource:
                columnName: auth_token
            mode: Literal
            literalQuery:
              isPropertiesRef: true
            literalPath:
              pathElements:
              - values:
                - $type: ScriptedValue
                fixedValue:
                  $type: StringTestValue
                  value: Auth0
              - values:
                - $type: ScriptedValue
                fixedValue:
                  $type: StringTestValue
                  value: parabank
              - values:
                - $type: ScriptedValue
                fixedValue:
                  $type: StringTestValue
                  value: services
              - values:
                - $type: ScriptedValue
                fixedValue:
                  $type: StringTestValue
                  value: bank
              - values:
                - $type: ScriptedValue
                fixedValue:
                  $type: StringTestValue
                  value: customers
              - values:
                - $type: ScriptedValue
                fixedValue:
                  $type: StringTestValue
                  value: 12212
            resourceMethod:
              httpMethod: GET
            baseUrl:
              values:
              - $type: ScriptedValue
              - $type: WadlTestValue
              fixedValue:
                $type: StringTestValue
              selectedIndex: 1
  - $type: TestSuite
    testLogic: true
    testFlowLogic:
      condition: true
    testID: 423
    enabled: true
    name: Component Testing (Monitored Integration Testing)
    profileMappingID: 0
    maxProfileMappingID: 1
    nextIdentifier: 1
    dataSources:
    - id: ds_-1159202116_1637617770237_1400089354
      impl:
        $type: TableDataSource
        model:
          columnIdentifiers:
          - customerId
          - fromAccountId
          - downPayment
          - loanAmount
          rows:
          - - 12212
            - 12345
            - 100
            - 1000
          - - 12212
            - 54321
            - 100
            - 1000
      name: Test Data
      useAllRows: true
    tests:
    - $type: ToolTest
      testLogic: true
      testFlowLogic:
        condition: true
      testID: 426
      enabled: true
      name: Event Monitor
      tool:
        $type: MonitorTool
        iconName: SearchTool
        name: Event Monitor
        xmlOutputProvider:
          $type: NamedXMLToolOutputProvider
          name: Event XML
        src:
          $type: StubEventSource
          mode: 2
          includeForwardRequest: false
          includeForwardResponse: false
          includeRequests: false
          includeResponses: false
          includeFailures: false
          jmsSelector:
            provider: 7
            connection:
              $type: BuiltinJMSProviderSettings
              password: AwAAAAA=
              uri: ""
              username: ""
              id: ""
              messageSelector: proxy_request=true or proxy_respose=true or error=true
                or type='proxy_request' or type='proxy_response' or type='client_request'
                or type='client_response' or type='error' or type='extension_event_error'
                or type='proxy_response_failure' or type='proxy_request_failure' or
                type='proxy_deploy_failure' or type='info' or type='extension_event_info'
                or type='warn' or type='extension_event_warn' or type='debug' or type='extension_event_debug'
              initialContext: ""
              connectionFactory: ""
              destination: ""
    - $type: RESTClientToolTest
      testLogic: true
      testFlowLogic:
        condition: true
      testID: 424
      enabled: true
      name: REST Client 2
      tool:
        $type: RESTClient
        dataSourceNames:
        - Test Data
        iconName: RESTClient
        name: POST /requestLoan
        formJson:
          value:
            $type: ElementValue
            writeType: true
            hasReference: true
            qnameAsString: :root
            replacedColumn: ""
            values:
            - $type: ComplexValue
              replacedColumn: ""
              attributes:
              - replacedColumn: ""
                value:
                  $type: StringValue
                  replacedColumn: ""
                  value: object
                  xmlEncoding: 2
                useValue: true
              compositorValue: true
              compositorValueObj:
                replacedColumn: ""
                values:
                  $type: CompositorValueSetCollectionSet
                  set:
                  - $type: CompositorValueSet
          elementTypeName: root
        jsonBuilder:
          hasValue: true
          value:
            $type: JSONObjectValue
            nameIsNull: true
        formInput:
          value:
            $type: ElementValue
            writeType: true
            hasReference: true
            qnameAsString: ":"
            replacedColumn: ""
            values:
            - $type: ComplexValue
              replacedColumn: ""
              compositorValue: true
              compositorValueObj:
                replacedColumn: ""
                values:
                  $type: CompositorValueSetCollectionSet
                  set:
                  - $type: CompositorValueSet
        constrainToSchema: false
        jmsMessageOutputProvider:
          $type: JMSMessageOutputProvider
          jmsOutputProviderRequest:
            $type: JMSOutputProvider
            name: Request Object
            menuName: Object
          jmsOutputProviderResponse:
            $type: JMSOutputProvider
            name: Response Message Object
            menuName: Message Object
        router:
          values:
          - $type: ScriptedValue
          fixedValue:
            $type: StringTestValue
            HTTPClient_Endpoint: "http://localhost:9080/parabank/services/bank/requestLoan?downPayment=${downPayment}&amount=${loanAmount}&fromAccountId=${fromAccountId}&customerId=${customerId}"
        urlParameters:
          properties:
          - name: downPayment
            value:
              values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
              parameterizedValue:
                column: downPayment
              selectedIndex: -2
          - name: amount
            value:
              values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
              parameterizedValue:
                column: loanAmount
              selectedIndex: -2
          - name: fromAccountId
            value:
              values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
              parameterizedValue:
                column: fromAccountId
              selectedIndex: -2
          - name: customerId
            value:
              values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
              parameterizedValue:
                column: customerId
              selectedIndex: -2
        transportProperties:
          manager:
            protocol: 1
            properties:
            - $type: HTTPClientHTTPProperties
              followRedirects:
                bool: true
              common:
                auth:
                  useDefault: false
                  customType: 1
                method:
                  values:
                  - $type: ScriptedValue
                  fixedValue:
                    $type: HTTPMethodTestValue
                    method: POST
                httpHeaders:
                  properties:
                  - name: Accept
                    value:
                      values:
                      - $type: ScriptedValue
                      fixedValue:
                        $type: StringTestValue
                        value: application/json
              protocol: 1
              keepAlive1_1:
                bool: true
            - $type: HTTPClientHTTPProperties
              followRedirects:
                bool: true
              common:
                auth:
                  useDefault: false
                  customType: 1
                method:
                  values:
                  - $type: ScriptedValue
                  fixedValue:
                    $type: HTTPMethodTestValue
                    method: POST
                httpHeaders:
                  properties:
                  - name: Accept
                    value:
                      values:
                      - $type: ScriptedValue
                      fixedValue:
                        $type: StringTestValue
                        value: application/json
              keepAlive1_1:
                bool: true
            - $type: NoneTransportProperties
          messageExchangePattern:
            inverted: true
        outputProviders:
          requestHeader:
            $type: HTTPNamedToolOutputProvider
            menuName: Transport Header
            name: Request Transport Header
          responseHeader:
            $type: HTTPNamedToolOutputProvider
            menuName: Transport Header
            name: Response Transport Header
          xmlRequestOutput:
            $type: NamedXMLToolOutputProvider
            menuName: Traffic
            name: Request Traffic
          trafficOutput:
            m_name: Traffic Stream
          objectOutput:
            $type: ObjectOutputProvider
            outputTools:
            - $type: TrafficViewer
              iconName: TrafficViewer
              name: Traffic Viewer
              showRequestHeaders: true
              showResponseHeaders: true
            name: Traffic Object
        literal:
          use: 1
          text:
            MessagingClient_LiteralMessage: ""
            type: application/json
          dataSource:
            columnName: RandomNumber
        mode: Literal
        literalQuery:
          isPropertiesRef: true
        literalPath:
          pathElements:
          - values:
            - $type: ScriptedValue
            fixedValue:
              $type: StringTestValue
              value: parabank
          - values:
            - $type: ScriptedValue
            fixedValue:
              $type: StringTestValue
              value: services
          - values:
            - $type: ScriptedValue
            fixedValue:
              $type: StringTestValue
              value: bank
          - values:
            - $type: ScriptedValue
            fixedValue:
              $type: StringTestValue
              value: requestLoan
        resourceMethod:
          httpMethod: GET
        baseUrl:
          values:
          - $type: ScriptedValue
          - $type: WadlTestValue
          fixedValue:
            $type: StringTestValue
          selectedIndex: 1
  - $type: TestSuite
    reportingSettings:
      requirementsTracking:
        prNumbers:
        - requirementType: '@req'
          requirementID: 456
          requirementURL: ""
        comment: Version 2.5
    testLogic: true
    testFlowLogic:
      condition: true
    testID: 629
    enabled: true
    name: Requirements Traceability
    profileMappingID: 0
    maxProfileMappingID: 1
    nextIdentifier: 1
    tests:
    - $type: RESTClientToolTest
      testLogic: true
      testFlowLogic:
        condition: true
      testID: 630
      enabled: true
      name: "/accounts/{accountId} - GET"
      performanceGroup: 0
      tool:
        $type: RESTClient
        iconName: RESTClient
        name: "/accounts/{accountId} - GET"
        outputTools:
        - $type: DiffTool
          iconName: Diff
          name: "Diff control generated on Dec 30, 2021 12:57:53 PM."
          differs:
          - $type: BinaryDiffer
            source:
              optionsSource: 1
          - $type: TextDiffer
          - $type: XMLDifferNew
            formXml:
              formXML:
                rootNodeExists: true
                rootNode:
                  $type: XMLElementNode
                  xmlEncoding: 2
                  value: ""
                  name: NewElement
                  showAttributes: true
            hasSoapControlSource: true
            soapControlSource:
              $type: SoapDiffControlSource
          - $type: JSONDiffer
          source:
            controls:
            - keys:
              - ""
              - ""
              row:
                refs:
                - dataSourceName: ""
                last: false
            - "{\"id\":12345,\"customerId\":12212,\"type\":\"CHECKING\",\"balance\"\
              :-2300.00}"
          mode: 3
        formJson:
          value:
            $type: ElementValue
            writeType: true
            hasReference: true
            qnameAsString: :root
            replacedColumn: ""
            values:
            - $type: ComplexValue
              replacedColumn: ""
              attributes:
              - replacedColumn: ""
                value:
                  $type: StringValue
                  replacedColumn: ""
                  value: object
                  xmlEncoding: 2
                useValue: true
              compositorValue: true
              compositorValueObj:
                replacedColumn: ""
                values:
                  $type: CompositorValueSetCollectionSet
                  set:
                  - $type: CompositorValueSet
          elementTypeName: root
        hasServiceInfo: true
        serviceInfo:
          serviceDescriptor:
            $type: StandardServiceDescriptor
            location: file:///C:/Users/whaaker/parasoft/soavirt_workspace_main/SOAtestDemoExamples/Parabank/Bank/swagger.yaml
          serviceName: ""
          versionName: ""
        jsonBuilder:
          hasValue: true
          value:
            $type: JSONObjectValue
            nameIsNull: true
        schemaURL:
          MessagingClient_SchemaLocation: "${SWAGGER}"
        formInput:
          value:
            $type: ElementValue
            writeType: true
            hasReference: true
            qnameAsString: ":"
            replacedColumn: ""
            values:
            - $type: ComplexValue
              replacedColumn: ""
              compositorValue: true
              compositorValueObj:
                replacedColumn: ""
                values:
                  $type: CompositorValueSetCollectionSet
                  set:
                  - $type: CompositorValueSet
        jmsMessageOutputProvider:
          $type: JMSMessageOutputProvider
          jmsOutputProviderRequest:
            $type: JMSOutputProvider
            name: Request Object
            menuName: Object
          jmsOutputProviderResponse:
            $type: JMSOutputProvider
            name: Response Message Object
            menuName: Message Object
        validResponseRange:
          validResponseRange:
            values:
            - $type: ScriptedValue
            fixedValue:
              $type: StringTestValue
              validResponseRange: 200
        router:
          values:
          - $type: ScriptedValue
          fixedValue:
            $type: StringTestValue
            HTTPClient_Endpoint: "${BASEURL}/accounts/12345?_type=json"
        urlParameters:
          properties:
          - name: _type
            value:
              values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                value: json
        transportProperties:
          manager:
            protocol: 1
            properties:
            - $type: HTTPClientHTTPProperties
              followRedirects:
                bool: true
              common:
                auth:
                  useDefault: false
                  customType: 1
                method:
                  values:
                  - $type: ScriptedValue
                  fixedValue:
                    $type: HTTPMethodTestValue
                    method: GET
                httpHeaders:
                  properties:
                  - name: Accept
                    value:
                      values:
                      - $type: ScriptedValue
                      fixedValue:
                        $type: StringTestValue
                        value: application/json
              keepAlive1_1:
                bool: true
            - $type: HTTPClientHTTPProperties
              followRedirects:
                bool: true
              common:
                auth:
                  useDefault: false
                  customType: 1
                method:
                  values:
                  - $type: ScriptedValue
                  fixedValue:
                    $type: HTTPMethodTestValue
                    method: GET
                httpHeaders:
                  properties:
                  - name: Accept
                    value:
                      values:
                      - $type: ScriptedValue
                      fixedValue:
                        $type: StringTestValue
                        value: application/json
              protocol: 1
              keepAlive1_1:
                bool: true
            - $type: NoneTransportProperties
          messageExchangePattern:
            inverted: true
        outputProviders:
          requestHeader:
            $type: HTTPNamedToolOutputProvider
            menuName: Transport Header
            name: Request Transport Header
          responseHeader:
            $type: HTTPNamedToolOutputProvider
            menuName: Transport Header
            name: Response Transport Header
          xmlRequestOutput:
            $type: NamedXMLToolOutputProvider
            menuName: Traffic
            name: Request Traffic
          trafficOutput:
            m_name: Traffic Stream
          objectOutput:
            $type: ObjectOutputProvider
            outputTools:
            - $type: TrafficViewer
              iconName: TrafficViewer
              name: Traffic Viewer
              showRequestHeaders: true
              showResponseHeaders: true
            name: Traffic Object
        literal:
          use: 1
          text:
            MessagingClient_LiteralMessage: ""
            type: application/json
        mode: Literal
        literalQuery:
          isPropertiesRef: true
        literalPath:
          pathElements:
          - values:
            - $type: ScriptedValue
            fixedValue:
              $type: StringTestValue
              value: accounts
          - values:
            - $type: ScriptedValue
            fixedValue:
              $type: StringTestValue
              value: 12345
        constrainedPath:
          pathParameters:
          - $type: ElementValue
            writeType: true
            hasReference: true
            qnameAsString: :accountId
            replacedColumn: ""
            values:
            - $type: IntegerValue
              replacedColumn: ""
              value: 12345
        resourceMethod:
          resourceId: "/accounts/{accountId}"
          httpMethod: GET
        resourceMode: 3
        baseUrl:
          values:
          - $type: ScriptedValue
          - $type: WadlTestValue
            value: http://18.237.146.177:8090/parabank/services/bank
          fixedValue:
            $type: StringTestValue
            value: "${BASEURL}"
    - $type: RESTClientToolTest
      testLogic: true
      testFlowLogic:
        condition: true
      testID: 631
      enabled: true
      name: /billpay - POST
      performanceGroup: 6
      tool:
        $type: RESTClient
        iconName: RESTClient
        name: /billpay - POST
        outputTools:
        - $type: DiffTool
          iconName: Diff
          name: "Diff control generated on Apr 15, 2022 10:57:37 AM."
          differs:
          - $type: BinaryDiffer
            source:
              optionsSource: 1
          - $type: TextDiffer
          - $type: XMLDifferNew
            formXml:
              formXML:
                rootNodeExists: true
                rootNode:
                  $type: XMLElementNode
                  xmlEncoding: 2
                  value: ""
                  name: NewElement
                  showAttributes: true
            hasSoapControlSource: true
            soapControlSource:
              $type: SoapDiffControlSource
          - $type: JSONDiffer
          source:
            controls:
            - keys:
              - ""
              - ""
              row:
                refs:
                - dataSourceName: ""
                last: false
            - "{\"payeeName\":\"Wilhelm Haaker\",\"amount\":10.0,\"accountId\":12345}"
          mode: 3
        formJson:
          builtFromSchema: true
          value:
            $type: ElementValue
            writeType: true
            type:
              $type: ElementType
              hash: 1
              localName: root
              bodyType:
                $type: ComplexType
                hash: 2
                attributes:
                - hash: 3
                  ns: ""
                  name: type
                  defaultValue: object
                  fixed: object
                  contentType:
                    $type: StringType
                    hash: 4
                  required: true
                name: /components/schemas/Payee
                compositor: true
                compositorObj:
                  $type: AllCompositor
                  hash: 5
                  types:
                  - $type: ElementType
                    hash: 6
                    minOccurs: 0
                    localName: name
                    bodyType:
                      $type: ComplexType
                      hash: 7
                      attributes:
                      - hash: 8
                        ns: ""
                        name: type
                        defaultValue: string
                        fixed: string
                        contentType:
                          $type: StringType
                          hash: 4
                        required: true
                      content: true
                      contentObj:
                        $type: StringType
                        hash: 4
                      namespace: urn:parasoft:json
                      name: string
                      compositor: true
                      compositorObj:
                        $type: SequenceCompositor
                        hash: 9
                  - $type: ElementType
                    hash: 10
                    minOccurs: 0
                    localName: address
                    bodyType:
                      $type: ComplexType
                      hash: 11
                      attributes:
                      - hash: 12
                        ns: ""
                        name: type
                        defaultValue: object
                        fixed: object
                        contentType:
                          $type: StringType
                          hash: 4
                        required: true
                      name: /components/schemas/Address
                      compositor: true
                      compositorObj:
                        $type: AllCompositor
                        hash: 13
                        types:
                        - $type: ElementType
                          hash: 14
                          minOccurs: 0
                          localName: street
                          bodyType:
                            $type: ComplexType
                            hash: 7
                        - $type: ElementType
                          hash: 15
                          minOccurs: 0
                          localName: city
                          bodyType:
                            $type: ComplexType
                            hash: 7
                        - $type: ElementType
                          hash: 16
                          minOccurs: 0
                          localName: state
                          bodyType:
                            $type: ComplexType
                            hash: 7
                        - $type: ElementType
                          hash: 17
                          minOccurs: 0
                          localName: zipCode
                          bodyType:
                            $type: ComplexType
                            hash: 7
                  - $type: ElementType
                    hash: 18
                    minOccurs: 0
                    localName: phoneNumber
                    bodyType:
                      $type: ComplexType
                      hash: 7
                  - $type: ElementType
                    hash: 19
                    minOccurs: 0
                    localName: accountNumber
                    bodyType:
                      $type: ComplexType
                      hash: 20
                      attributes:
                      - hash: 21
                        ns: ""
                        name: type
                        defaultValue: number
                        fixed: number
                        contentType:
                          $type: StringType
                          hash: 4
                        required: true
                      content: true
                      contentObj:
                        $type: IntegerType
                        hash: 22
                      namespace: urn:parasoft:json
                      name: number
                      compositor: true
                      compositorObj:
                        $type: SequenceCompositor
                        hash: 23
            replacedColumn: ""
            values:
            - $type: ComplexValue
              replacedColumn: ""
              attributes:
              - replacedColumn: ""
                value:
                  $type: StringValue
                  replacedColumn: ""
                  value: object
                  xmlEncoding: 2
                useValue: true
              compositorValue: true
              compositorValueObj:
                replacedColumn: ""
                values:
                  $type: CompositorValueSetCollectionSet
                  set:
                  - $type: CompositorValueSet
                    values:
                    - $type: ElementValue
                      replacedColumn: ""
                      values:
                      - $type: ComplexValue
                        replacedColumn: ""
                        allowArrayExclude: true
                        attributes:
                        - replacedColumn: ""
                          value:
                            $type: StringValue
                            replacedColumn: ""
                            value: string
                            xmlEncoding: 2
                          useValue: true
                        contentValue: true
                        contentValueObj:
                          $type: StringValue
                          replacedColumn: ""
                          value: Wilhelm Haaker
                          xmlEncoding: 2
                        compositorValue: true
                        compositorValueObj:
                          replacedColumn: ""
                          values:
                            $type: CompositorValueSetCollectionSet
                            set:
                            - $type: CompositorValueSet
                    - $type: ElementValue
                      replacedColumn: ""
                      values:
                      - $type: ComplexValue
                        replacedColumn: ""
                        allowArrayExclude: true
                        attributes:
                        - replacedColumn: ""
                          value:
                            $type: StringValue
                            replacedColumn: ""
                            value: object
                            xmlEncoding: 2
                          useValue: true
                        compositorValue: true
                        compositorValueObj:
                          replacedColumn: ""
                          values:
                            $type: CompositorValueSetCollectionSet
                            set:
                            - $type: CompositorValueSet
                              values:
                              - $type: ElementValue
                                replacedColumn: ""
                                values:
                                - $type: ComplexValue
                                  replacedColumn: ""
                                  allowArrayExclude: true
                                  attributes:
                                  - replacedColumn: ""
                                    value:
                                      $type: StringValue
                                      replacedColumn: ""
                                      value: string
                                      xmlEncoding: 2
                                    useValue: true
                                  contentValue: true
                                  contentValueObj:
                                    $type: StringValue
                                    replacedColumn: ""
                                    value: 101 E. Huntington Drive
                                    xmlEncoding: 2
                                  compositorValue: true
                                  compositorValueObj:
                                    replacedColumn: ""
                                    values:
                                      $type: CompositorValueSetCollectionSet
                                      set:
                                      - $type: CompositorValueSet
                              - $type: ElementValue
                                replacedColumn: ""
                                values:
                                - $type: ComplexValue
                                  replacedColumn: ""
                                  allowArrayExclude: true
                                  attributes:
                                  - replacedColumn: ""
                                    value:
                                      $type: StringValue
                                      replacedColumn: ""
                                      value: string
                                      xmlEncoding: 2
                                    useValue: true
                                  contentValue: true
                                  contentValueObj:
                                    $type: StringValue
                                    replacedColumn: ""
                                    value: Monrovia
                                    xmlEncoding: 2
                                  compositorValue: true
                                  compositorValueObj:
                                    replacedColumn: ""
                                    values:
                                      $type: CompositorValueSetCollectionSet
                                      set:
                                      - $type: CompositorValueSet
                              - $type: ElementValue
                                replacedColumn: ""
                                values:
                                - $type: ComplexValue
                                  replacedColumn: ""
                                  allowArrayExclude: true
                                  attributes:
                                  - replacedColumn: ""
                                    value:
                                      $type: StringValue
                                      replacedColumn: ""
                                      value: string
                                      xmlEncoding: 2
                                    useValue: true
                                  contentValue: true
                                  contentValueObj:
                                    $type: StringValue
                                    replacedColumn: ""
                                    value: California
                                    xmlEncoding: 2
                                  compositorValue: true
                                  compositorValueObj:
                                    replacedColumn: ""
                                    values:
                                      $type: CompositorValueSetCollectionSet
                                      set:
                                      - $type: CompositorValueSet
                              - $type: ElementValue
                                replacedColumn: ""
                                values:
                                - $type: ComplexValue
                                  replacedColumn: ""
                                  allowArrayExclude: true
                                  attributes:
                                  - replacedColumn: ""
                                    value:
                                      $type: StringValue
                                      replacedColumn: ""
                                      value: string
                                      xmlEncoding: 2
                                    useValue: true
                                  contentValue: true
                                  contentValueObj:
                                    $type: StringValue
                                    replacedColumn: ""
                                    value: 91016
                                    xmlEncoding: 2
                                  compositorValue: true
                                  compositorValueObj:
                                    replacedColumn: ""
                                    values:
                                      $type: CompositorValueSetCollectionSet
                                      set:
                                      - $type: CompositorValueSet
                    - $type: ElementValue
                      replacedColumn: ""
                      values:
                      - $type: ComplexValue
                        replacedColumn: ""
                        allowArrayExclude: true
                        attributes:
                        - replacedColumn: ""
                          value:
                            $type: StringValue
                            replacedColumn: ""
                            value: string
                            xmlEncoding: 2
                          useValue: true
                        contentValue: true
                        contentValueObj:
                          $type: StringValue
                          replacedColumn: ""
                          value: 123-456-7899
                          xmlEncoding: 2
                        compositorValue: true
                        compositorValueObj:
                          replacedColumn: ""
                          values:
                            $type: CompositorValueSetCollectionSet
                            set:
                            - $type: CompositorValueSet
                    - $type: ElementValue
                      replacedColumn: ""
                      values:
                      - $type: ComplexValue
                        replacedColumn: ""
                        allowArrayExclude: true
                        attributes:
                        - replacedColumn: ""
                          value:
                            $type: StringValue
                            replacedColumn: ""
                            value: number
                            xmlEncoding: 2
                          useValue: true
                        contentValue: true
                        contentValueObj:
                          $type: IntegerValue
                          replacedColumn: ""
                          value: 54321
                        compositorValue: true
                        compositorValueObj:
                          replacedColumn: ""
                          values:
                            $type: CompositorValueSetCollectionSet
                            set:
                            - $type: CompositorValueSet
          elementTypeName: root
        hasServiceInfo: true
        serviceInfo:
          serviceDescriptor:
            $type: StandardServiceDescriptor
            location: http://qa1.parasoft.com:8090/parabank/services/bank/swagger.yaml
          serviceName: ""
          versionName: ""
        jsonBuilder:
          hasValue: true
          value:
            $type: JSONObjectValue
            nameIsNull: true
        schemaURL:
          MessagingClient_SchemaLocation: "${SWAGGER}"
        formInput:
          value:
            $type: ElementValue
            writeType: true
            hasReference: true
            qnameAsString: ":"
            replacedColumn: ""
            values:
            - $type: ComplexValue
              replacedColumn: ""
              compositorValue: true
              compositorValueObj:
                replacedColumn: ""
                values:
                  $type: CompositorValueSetCollectionSet
                  set:
                  - $type: CompositorValueSet
        jmsMessageOutputProvider:
          $type: JMSMessageOutputProvider
          jmsOutputProviderRequest:
            $type: JMSOutputProvider
            name: Request Object
            menuName: Object
          jmsOutputProviderResponse:
            $type: JMSOutputProvider
            name: Response Message Object
            menuName: Message Object
        validResponseRange:
          validResponseRange:
            values:
            - $type: ScriptedValue
            fixedValue:
              $type: StringTestValue
              validResponseRange: 200
        router:
          values:
          - $type: ScriptedValue
          fixedValue:
            $type: StringTestValue
            HTTPClient_Endpoint: "${BASEURL}/billpay?accountId=0&amount=0.0"
        urlParameters:
          properties:
          - name: accountId
            value:
              values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                value: 0
          - name: amount
            value:
              values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                value: 0.0
        transportProperties:
          manager:
            protocol: 1
            properties:
            - $type: HTTPClientHTTPProperties
              followRedirects:
                bool: true
              common:
                auth:
                  useDefault: false
                  customType: 1
                method:
                  values:
                  - $type: ScriptedValue
                  fixedValue:
                    $type: HTTPMethodTestValue
                    method: POST
                httpHeaders:
                  properties:
                  - name: Accept
                    value:
                      values:
                      - $type: ScriptedValue
                      fixedValue:
                        $type: StringTestValue
                        value: application/json
              protocol: 1
              keepAlive1_1:
                bool: true
            - $type: HTTPClientHTTPProperties
              followRedirects:
                bool: true
              common:
                auth:
                  useDefault: false
                  customType: 1
                method:
                  values:
                  - $type: ScriptedValue
                  fixedValue:
                    $type: HTTPMethodTestValue
                    method: POST
                httpHeaders:
                  properties:
                  - name: Accept
                    value:
                      values:
                      - $type: ScriptedValue
                      fixedValue:
                        $type: StringTestValue
                        value: application/json
              keepAlive1_1:
                bool: true
            - $type: NoneTransportProperties
          messageExchangePattern:
            inverted: true
        outputProviders:
          requestHeader:
            $type: HTTPNamedToolOutputProvider
            menuName: Transport Header
            name: Request Transport Header
          responseHeader:
            $type: HTTPNamedToolOutputProvider
            menuName: Transport Header
            name: Response Transport Header
          xmlRequestOutput:
            $type: NamedXMLToolOutputProvider
            menuName: Traffic
            name: Request Traffic
          trafficOutput:
            m_name: Traffic Stream
          objectOutput:
            $type: ObjectOutputProvider
            outputTools:
            - $type: TrafficViewer
              iconName: TrafficViewer
              name: Traffic Viewer
              showRequestHeaders: true
            name: Traffic Object
        literal:
          use: 1
          text:
            MessagingClient_LiteralMessage: "{\"name\":\"\",\"address\":{\"street\"\
              :\"\",\"city\":\"\",\"state\":\"\",\"zipCode\":\"\"},\"phoneNumber\"\
              :\"\",\"accountNumber\":0}"
            type: application/json
        mode: Form JSON
        literalQuery:
          isPropertiesRef: true
        constrainedQuery:
          parameters:
          - $type: ElementValue
            writeType: true
            hasReference: true
            qnameAsString: :accountId
            replacedColumn: ""
            values:
            - $type: IntegerValue
              replacedColumn: ""
              value: 12345
          - $type: ElementValue
            writeType: true
            hasReference: true
            qnameAsString: :amount
            replacedColumn: ""
            values:
            - $type: DecimalValue
              replacedColumn: ""
              value: 10.0
        literalPath:
          pathElements:
          - values:
            - $type: ScriptedValue
            fixedValue:
              $type: StringTestValue
              value: billpay
        resourceMethod:
          resourceId: /billpay
          httpMethod: POST
        resourceMode: 3
        baseUrl:
          values:
          - $type: ScriptedValue
          - $type: WadlTestValue
            value: http://18.237.146.177:8090/parabank/services/bank
          fixedValue:
            $type: StringTestValue
            value: "${BASEURL}"
  - $type: TestSuite
    testLogic: true
    testFlowLogic:
      condition: true
    testID: 714
    enabled: true
    name: Manipulate JSON Dynamically
    profileMappingID: 0
    maxProfileMappingID: 1
    nextIdentifier: 1
    tests:
    - $type: HTTPClientToolTest
      testLogic: true
      testFlowLogic:
        condition: true
      testID: 715
      enabled: true
      name: Messaging Client
      tool:
        $type: HTTPClient
        iconName: HTTPClient
        name: Messaging Client
        formJson:
          value:
            $type: ElementValue
            writeType: true
            type:
              $type: ElementType
              hash: 1
              localName: root
              bodyType:
                $type: ComplexType
                hash: 2
                attributes:
                - hash: 3
                  ns: ""
                  name: type
                  fixed: object
                  contentType:
                    $type: StringType
                    hash: 4
                  required: true
                name: rootType
                compositor: true
                compositorObj:
                  $type: AllCompositor
                  hash: 5
            replacedColumn: ""
            values:
            - $type: ComplexValue
              replacedColumn: ""
              attributes:
              - replacedColumn: ""
                value:
                  $type: StringValue
                  replacedColumn: ""
                  value: object
                  xmlEncoding: 2
                useValue: true
              compositorValue: true
              compositorValueObj:
                replacedColumn: ""
                values:
                  $type: CompositorValueSetCollectionSet
                  set:
                  - $type: CompositorValueSet
          elementTypeName: root
        hasServiceInfo: true
        serviceInfo:
          serviceDescriptor:
            $type: StandardServiceDescriptor
            location: ""
          serviceName: ""
          versionName: ""
        jsonBuilder:
          hasValue: true
          value:
            $type: JSONObjectValue
            nameIsNull: true
        formInput:
          value:
            $type: ElementValue
            writeType: true
            hasReference: true
            qnameAsString: ":"
            replacedColumn: ""
            values:
            - $type: ComplexValue
              replacedColumn: ""
              compositorValue: true
              compositorValueObj:
                replacedColumn: ""
                values:
                  $type: CompositorValueSetCollectionSet
                  set:
                  - $type: CompositorValueSet
        jmsMessageOutputProvider:
          $type: JMSMessageOutputProvider
          jmsOutputProviderRequest:
            $type: JMSOutputProvider
            name: Request Object
            menuName: Object
          jmsOutputProviderResponse:
            $type: JMSOutputProvider
            name: Response Message Object
            menuName: Message Object
        transportProperties:
          manager:
            protocol: 10
            properties:
            - $type: HTTPClientHTTPProperties
              followRedirects:
                bool: true
              common:
                auth:
                  useDefault: false
                  customType: 1
                method:
                  values:
                  - $type: ScriptedValue
                  fixedValue:
                    $type: HTTPMethodTestValue
                    method: POST
              keepAlive1_1:
                bool: true
            - $type: HTTPClientHTTPProperties
              followRedirects:
                bool: true
              common:
                auth:
                  useDefault: false
                  customType: 1
                method:
                  values:
                  - $type: ScriptedValue
                  fixedValue:
                    $type: HTTPMethodTestValue
                    method: POST
              protocol: 1
              keepAlive1_1:
                bool: true
            - $type: JNDIProperties
              msgExpiration:
                $type: JMSMessageExpiration
              bytesMessageReadMethod:
                string: readUTF()
              responseCorrelation:
                correlationId:
                  name: JMSCorrelationID
                  value:
                    values:
                    - $type: ScriptedValue
                    fixedValue:
                      $type: StringTestValue
                messageSelector: ""
              queueProperties:
                jmsDestination:
                  name: JMSDestination
                  value:
                    values:
                    - $type: ScriptedValue
                    fixedValue:
                      $type: StringTestValue
                      value: JMS_RequestQueue
                jmsReplyTo:
                  name: JMSReplyTo
                  value:
                    values:
                    - $type: ScriptedValue
                    fixedValue:
                      $type: StringTestValue
                      value: JMS_ResponseQueue
              msgType:
                string: javax.jms.TextMessage
              useP2P:
                bool: true
              connProperties:
                jmsFactory:
                  name: Connection Factory
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: MQ_JMS_MANAGER
                jndiFactory:
                  name: Initial Context
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: com.sun.jndi.fscontext.RefFSContextFactory
                providerURL:
                  name: Provider URL
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: file:/C:/JNDI-Directory
                auth:
                  service:
                    name: Service
                    value:
                      fixedValue:
                        $type: StringTestValue
                  username:
                    name: Username
                    value:
                      fixedValue:
                        $type: StringTestValue
                  password:
                    name: Password
                    value:
                      fixedValue:
                        $type: PasswordTestValue
              useSync: true
            - $type: SonicMQJNDIProperties
              msgExpiration:
                $type: JMSMessageExpiration
              bytesMessageReadMethod:
                string: readUTF()
              responseCorrelation:
                correlationId:
                  name: JMSCorrelationID
                  value:
                    values:
                    - $type: ScriptedValue
                    fixedValue:
                      $type: StringTestValue
                messageSelector: ""
              queueProperties:
                jmsDestination:
                  name: JMSDestination
                  value:
                    values:
                    - $type: ScriptedValue
                    fixedValue:
                      $type: StringTestValue
                      value: JMS_RequestQueue
                jmsReplyTo:
                  name: JMSReplyTo
                  value:
                    values:
                    - $type: ScriptedValue
                    fixedValue:
                      $type: StringTestValue
                      value: JMS_ResponseQueue
              msgType:
                string: progress.message.jclient.MultipartMessage
              useP2P:
                bool: true
              connProperties:
                initialContextProps:
                - name: java.naming.security.credentials
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: Administrator
                - name: java.naming.security.principal
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: Administrator
                jmsFactory:
                  name: Connection Factory
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: ConnectionFactory
                jndiFactory:
                  name: Initial Context
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: com.sonicsw.jndi.mfcontext.MFContextFactory
                providerURL:
                  name: Provider URL
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: "tcp://[hostname]:2506"
                auth:
                  service:
                    name: Service
                    value:
                      fixedValue:
                        $type: StringTestValue
                  username:
                    name: Username
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: Administrator
                  password:
                    name: Password
                    value:
                      fixedValue:
                        $type: PasswordTestValue
              useSync: true
              partContentID:
                string: part1
            - $type: MQProperties
              mqrfh2fields:
                version:
                  name: Version
                  value:
                    fixedValue:
                      $type: StringTestValue
                encoding:
                  name: Encoding
                  value:
                    fixedValue:
                      $type: StringTestValue
                codedCharSetId:
                  name: CodedCharSetId
                  value:
                    fixedValue:
                      $type: StringTestValue
                format:
                  name: Format
                  value:
                    fixedValue:
                      $type: StringTestValue
                flags:
                  name: Flags
                  value:
                    fixedValue:
                      $type: StringTestValue
                nameValueCodedCharSetId:
                  name: NameValueCodedCharSetId
                  value:
                    fixedValue:
                      $type: StringTestValue
              mcd:
                msd:
                  name: Message Service Domain
                  value:
                    fixedValue:
                      $type: StringTestValue
                set:
                  name: Message Set
                  value:
                    fixedValue:
                      $type: StringTestValue
                type:
                  name: Message Type
                  value:
                    fixedValue:
                      $type: StringTestValue
                fmt:
                  name: Output Format
                  value:
                    fixedValue:
                      $type: StringTestValue
              psc:
                subIdentity:
                  name: SubIdentity
                  value:
                    fixedValue:
                      $type: StringTestValue
                qName:
                  name: QName
                  value:
                    fixedValue:
                      $type: StringTestValue
                qMgrName:
                  name: QMgrName
                  value:
                    fixedValue:
                      $type: StringTestValue
                subPoint:
                  name: SubPoint
                  value:
                    fixedValue:
                      $type: StringTestValue
                filter:
                  name: Filter
                  value:
                    fixedValue:
                      $type: StringTestValue
                subName:
                  name: SubName
                  value:
                    fixedValue:
                      $type: StringTestValue
                subUserData:
                  name: SubUserData
                  value:
                    fixedValue:
                      $type: StringTestValue
              jms:
                destination:
                  name: Destination
                  value:
                    fixedValue:
                      $type: StringTestValue
                replyTo:
                  name: Reply To
                  value:
                    fixedValue:
                      $type: StringTestValue
                timestamp:
                  name: Timestamp
                  value:
                    fixedValue:
                      $type: StringTestValue
                expiration:
                  name: Expiration
                  value:
                    fixedValue:
                      $type: StringTestValue
                correlationId:
                  name: Correlation Id
                  value:
                    fixedValue:
                      $type: StringTestValue
                priority:
                  name: Priority
                  value:
                    fixedValue:
                      $type: StringTestValue
                deliveryMode:
                  name: Delivery Mode
                  value:
                    fixedValue:
                      $type: StringTestValue
              mqQueueManager:
                ccsid:
                  name: CCSID
                  value:
                    fixedValue:
                      $type: StringTestValue
              mqSSL:
                peerName:
                  name: Peer Name
                  value:
                    fixedValue:
                      $type: StringTestValue
                cipherSuite:
                  $type: EnumNameValuePair
                  name: CipherSuite
                  value:
                    fixedValue:
                      $type: StringTestValue
              conn:
                keepAliveConnection: false
                putManagerId:
                  name: Put Manager Id
                  value:
                    fixedValue:
                      $type: StringTestValue
                getManagerId:
                  name: Get Manager Id
                  value:
                    fixedValue:
                      $type: StringTestValue
                channel:
                  name: Channel
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: CHANNEL1
                host:
                  name: Host
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: host
                port:
                  name: Port
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: 1414
                manager:
                  name: Queue Manager
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: queue.manager.1
                putQueue:
                  name: Put Queue
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: PutQueue
                getQueue:
                  name: Get Queue
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: GetQueue
                messageID:
                  name: Message ID
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: Message ID
                auth:
                  service:
                    name: Service
                    value:
                      fixedValue:
                        $type: StringTestValue
                  username:
                    name: Username
                    value:
                      fixedValue:
                        $type: StringTestValue
                  password:
                    name: Password
                    value:
                      fixedValue:
                        $type: PasswordTestValue
              mqpmMisc:
                applicationIdData:
                  name: Application ID data
                  value:
                    fixedValue:
                      $type: StringTestValue
                correlationID:
                  name: Correlation ID
                  value:
                    fixedValue:
                      $type: StringTestValue
                expiry:
                  name: Expiry (in tenths of a second)
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: -1
                messageSequenceNumber:
                  name: Message sequence number
                  value:
                    fixedValue:
                      $type: StringTestValue
                replyToQueueManagerName:
                  name: Reply queue manager name
                  value:
                    fixedValue:
                      $type: StringTestValue
                replyToQueueName:
                  name: Reply queue name
                  value:
                    fixedValue:
                      $type: StringTestValue
                putApplicationName:
                  name: Put application name
                  value:
                    fixedValue:
                      $type: StringTestValue
                applicationOriginData:
                  name: Originating application data
                  value:
                    fixedValue:
                      $type: StringTestValue
                userId:
                  name: User ID
                  value:
                    fixedValue:
                      $type: StringTestValue
              mqgmMisc:
                correlationID:
                  name: Correlation Id
                  value:
                    fixedValue:
                      $type: StringTestValue
                waitInterval:
                  name: Wait Interval(in milliseconds)
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: -1
            - $type: RMIProperties
              hostName:
                name: Host
                value:
                  fixedValue:
                    $type: StringTestValue
                    value: Host
              portNumber:
                name: Port
                value:
                  fixedValue:
                    $type: StringTestValue
                    value: Port
              bindingName:
                name: Binding
                value:
                  fixedValue:
                    $type: StringTestValue
                    value: Binding
              remoteInterface:
                name: Remote Interface
                value:
                  fixedValue:
                    $type: StringTestValue
                    value: Remote Interface
              methodName:
                name: Method Name
                value:
                  fixedValue:
                    $type: StringTestValue
                    value: Method Name
            - $type: SMTPConnectionProperties
              port:
                name: Port
                value:
                  fixedValue:
                    $type: StringTestValue
                    value: 25
              host:
                name: SMTP Host
                value:
                  fixedValue:
                    $type: StringTestValue
              user:
                name: Username
                value:
                  fixedValue:
                    $type: StringTestValue
              pass:
                name: Password
                value:
                  fixedValue:
                    $type: PasswordTestValue
                    password: AwAAAAA=
              fromEmail:
                name: From Email
                value:
                  fixedValue:
                    $type: StringTestValue
              toEmail:
                name: To Email
                value:
                  fixedValue:
                    $type: StringTestValue
              subject:
                name: Subject
                value:
                  fixedValue:
                    $type: StringTestValue
            - $type: TIBCOProperties
              timeLimit:
                name: Time Limit
                value:
                  fixedValue:
                    $type: StringTestValue
                    value: 0
              service:
                name: ""
                value:
                  fixedValue:
                    $type: StringTestValue
              network:
                name: ""
                value:
                  fixedValue:
                    $type: StringTestValue
              daemon:
                name: DAEMON
                value:
                  fixedValue:
                    $type: StringTestValue
                    value: DAEMON
              sendSubject:
                name: Send Subject
                value:
                  fixedValue:
                    $type: StringTestValue
                    value: Send Subject
              replySubject:
                name: Reply Field Name
                value:
                  fixedValue:
                    $type: StringTestValue
                    value: Reply Field Name
              sendFieldName:
                name: Send Field Name
                value:
                  fixedValue:
                    $type: StringTestValue
                    value: Send Field Name
              replyFieldName:
                name: Reply Field Name
                value:
                  fixedValue:
                    $type: StringTestValue
                    value: Reply Field Name
            - $type: NoneTransportProperties
            - $type: CustomTransportProperties
              selected: 0
              configs:
              - $type: CustomTransportConfigurationImpl
                ConfigClassName: com.parasoft.soavirt.transport.socket.SocketTransport
                values:
                  customValueMap:
                  - charset
                  - $type: MultiValueCustomValue
                  - eof
                  - $type: MultiValueCustomValue
                  - host
                  - $type: MultiValueCustomValue
                  - port
                  - $type: MultiValueCustomValue
                className: com.parasoft.soavirt.transport.socket.SocketTransport
                name: TCP/IP Socket
          messageExchangePattern:
            inverted: true
        outputProviders:
          requestHeader:
            $type: HTTPNamedToolOutputProvider
            menuName: Transport Header
            name: Request Transport Header
          responseHeader:
            $type: HTTPNamedToolOutputProvider
            menuName: Transport Header
            name: Response Transport Header
          xmlRequestOutput:
            $type: NamedXMLToolOutputProvider
            outputTools:
            - $type: GenericDataBank
              iconName: XMLDataBank
              name: JSON Data Bank
              wrappedTool:
                $type: XMLtoDataSource
                iconName: XMLDataBank
                name: XML Data Bank
                selectedXPaths:
                - elementOption: 1
                  contentOption: 2
                  XMLDataBank_ExtractXPath: /root
                  target: 1
                  mode: 1
                selectedAlterXPaths:
                - value:
                    name: Value
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: DATABANK
                  XMLDataBank_AlterXPath: "/root/item/type[1]"
                  mode: 1
                  alteration: 2
                allowAlteration: true
                canonicalizeOutput: true
                xmlMessage: true
                virtualDSCreator:
                  writableColumns:
                  - customName: jsonDatabank
              conversionStrategy:
                dataFormatName: JSON
                conversionStrategyId: JSON
                conversionStrategyClassName: com.parasoft.xml.convert.json.JsonConversionStrategy
            menuName: Traffic
            name: Request Traffic
          trafficOutput:
            m_name: Traffic Stream
          objectOutput:
            $type: ObjectOutputProvider
            outputTools:
            - $type: TrafficViewer
              iconName: TrafficViewer
              name: Traffic Viewer
              showRequestHeaders: true
              showResponseHeaders: true
            name: Traffic Object
        literal:
          use: 1
          text:
            MessagingClient_LiteralMessage: "[\r\n    {\r\n        \"id\" : 12345,\r\
              \n        \"customerId\" : 12212,\r\n        \"type\" : \"CHECKING\"\
              ,\r\n        \"balance\" : -2600.00\r\n    },\r\n    {\r\n        \"\
              id\" : 12456,\r\n        \"customerId\" : 12212,\r\n        \"type\"\
              \ : \"CHECKING\",\r\n        \"balance\" : -89.55\r\n    },\r\n    {\r\
              \n        \"id\" : 12567,\r\n        \"customerId\" : 12212,\r\n   \
              \     \"type\" : \"CHECKING\",\r\n        \"balance\" : 0.00\r\n   \
              \ },\r\n    {\r\n        \"id\" : 12678,\r\n        \"customerId\" :\
              \ 12212,\r\n        \"type\" : \"SAVINGS\",\r\n        \"balance\" :\
              \ -200.00\r\n    },\r\n    {\r\n        \"id\" : 12789,\r\n        \"\
              customerId\" : 12212,\r\n        \"type\" : \"CHECKING\",\r\n      \
              \  \"balance\" : 0.00\r\n    },\r\n    {\r\n        \"id\" : 12900,\r\
              \n        \"customerId\" : 12212,\r\n        \"type\" : \"CHECKING\"\
              ,\r\n        \"balance\" : -40.00\r\n    },\r\n    {\r\n        \"id\"\
              \ : 13011,\r\n        \"customerId\" : 12212,\r\n        \"type\" :\
              \ \"CHECKING\",\r\n        \"balance\" : 0.00\r\n    },\r\n    {\r\n\
              \        \"id\" : 13122,\r\n        \"customerId\" : 12212,\r\n    \
              \    \"type\" : \"CHECKING\",\r\n        \"balance\" : 700.00\r\n  \
              \  },\r\n    {\r\n        \"id\" : 13233,\r\n        \"customerId\"\
              \ : 12212,\r\n        \"type\" : \"CHECKING\",\r\n        \"balance\"\
              \ : 0.00\r\n    },\r\n    {\r\n        \"id\" : 13344,\r\n        \"\
              customerId\" : 12212,\r\n        \"type\" : \"SAVINGS\",\r\n       \
              \ \"balance\" : 1231.10\r\n    },\r\n    {\r\n        \"id\" : 13566,\r\
              \n        \"customerId\" : 12212,\r\n        \"type\" : \"CHECKING\"\
              ,\r\n        \"balance\" : 100.00\r\n    },\r\n    {\r\n        \"id\"\
              \ : 13677,\r\n        \"customerId\" : 12212,\r\n        \"type\" :\
              \ \"CHECKING\",\r\n        \"balance\" : 100.00\r\n    },\r\n    {\r\
              \n        \"id\" : 13788,\r\n        \"customerId\" : 12212,\r\n   \
              \     \"type\" : \"CHECKING\",\r\n        \"balance\" : 100.00\r\n \
              \   },\r\n    {\r\n        \"id\" : 13899,\r\n        \"customerId\"\
              \ : 12212,\r\n        \"type\" : \"CHECKING\",\r\n        \"balance\"\
              \ : 100.00\r\n    },\r\n    {\r\n        \"id\" : 14010,\r\n       \
              \ \"customerId\" : 12212,\r\n        \"type\" : \"CHECKING\",\r\n  \
              \      \"balance\" : 100.00\r\n    },\r\n    {\r\n        \"id\" : 14121,\r\
              \n        \"customerId\" : 12212,\r\n        \"type\" : \"LOAN\",\r\n\
              \        \"balance\" : 1000.00\r\n    },\r\n    {\r\n        \"id\"\
              \ : 14232,\r\n        \"customerId\" : 12212,\r\n        \"type\" :\
              \ \"LOAN\",\r\n        \"balance\" : 1000.00\r\n    },\r\n    {\r\n\
              \        \"id\" : 14343,\r\n        \"customerId\" : 12212,\r\n    \
              \    \"type\" : \"LOAN\",\r\n        \"balance\" : 1000.00\r\n    },\r\
              \n    {\r\n        \"id\" : 14454,\r\n        \"customerId\" : 12212,\r\
              \n        \"type\" : \"LOAN\",\r\n        \"balance\" : 1000.00\r\n\
              \    },\r\n    {\r\n        \"id\" : 14565,\r\n        \"customerId\"\
              \ : 12212,\r\n        \"type\" : \"CHECKING\",\r\n        \"balance\"\
              \ : 100.00\r\n    },\r\n    {\r\n        \"id\" : 14676,\r\n       \
              \ \"customerId\" : 12212,\r\n        \"type\" : \"CHECKING\",\r\n  \
              \      \"balance\" : 100.00\r\n    },\r\n    {\r\n        \"id\" : 14787,\r\
              \n        \"customerId\" : 12212,\r\n        \"type\" : \"CHECKING\"\
              ,\r\n        \"balance\" : 100.00\r\n    },\r\n    {\r\n        \"id\"\
              \ : 14898,\r\n        \"customerId\" : 12212,\r\n        \"type\" :\
              \ \"CHECKING\",\r\n        \"balance\" : 100.00\r\n    },\r\n    {\r\
              \n        \"id\" : 15009,\r\n        \"customerId\" : 12212,\r\n   \
              \     \"type\" : \"CHECKING\",\r\n        \"balance\" : 100.00\r\n \
              \   },\r\n    {\r\n        \"id\" : 15120,\r\n        \"customerId\"\
              \ : 12212,\r\n        \"type\" : \"CHECKING\",\r\n        \"balance\"\
              \ : 100.00\r\n    },\r\n    {\r\n        \"id\" : 15231,\r\n       \
              \ \"customerId\" : 12212,\r\n        \"type\" : \"LOAN\",\r\n      \
              \  \"balance\" : 1000.00\r\n    },\r\n    {\r\n        \"id\" : 54321,\r\
              \n        \"customerId\" : 12212,\r\n        \"type\" : \"CHECKING\"\
              ,\r\n        \"balance\" : 1051.12\r\n    }\r\n]"
            type: application/json
        mode: Literal
    - $type: ToolTest
      testLogic: true
      testFlowLogic:
        condition: true
      testID: 716
      enabled: true
      name: Diff
      tool:
        $type: DiffTool
        iconName: Diff
        name: Diff
        differs:
        - $type: BinaryDiffer
          source:
            optionsSource: 1
        - $type: TextDiffer
        - $type: XMLDifferNew
          formXml:
            formXML:
              rootNodeExists: true
              rootNode:
                $type: XMLElementNode
                xmlEncoding: 2
                value: ""
                name: NewElement
                showAttributes: true
          hasSoapControlSource: true
          soapControlSource:
            $type: SoapDiffControlSource
        - $type: JSONDiffer
        source:
          optionsSource: 3
          dataSourceColumn: jsonDatabank
        mode: 3
      writeInput: true
      inputType: InputUsable
      input:
        use: 1
        text:
          text: "[\r\n    {\r\n        \"id\" : 12345,\r\n        \"customerId\" :\
            \ 12212,\r\n        \"type\" : \"CHECKING\",\r\n        \"balance\" :\
            \ -2600.00\r\n    },\r\n    {\r\n        \"id\" : 12456,\r\n        \"\
            customerId\" : 12212,\r\n        \"type\" : \"CHECKING\",\r\n        \"\
            balance\" : -89.55\r\n    },\r\n    {\r\n        \"id\" : 12567,\r\n \
            \       \"customerId\" : 12212,\r\n        \"type\" : \"CHECKING\",\r\n\
            \        \"balance\" : 0.00\r\n    },\r\n    {\r\n        \"id\" : 12678,\r\
            \n        \"customerId\" : 12212,\r\n        \"type\" : \"SAVINGS\",\r\
            \n        \"balance\" : -200.00\r\n    },\r\n    {\r\n        \"id\" :\
            \ 12789,\r\n        \"customerId\" : 12212,\r\n        \"type\" : \"CHECKING\"\
            ,\r\n        \"balance\" : 0.00\r\n    },\r\n    {\r\n        \"id\" :\
            \ 12900,\r\n        \"customerId\" : 12212,\r\n        \"type\" : \"CHECKING\"\
            ,\r\n        \"balance\" : -40.00\r\n    },\r\n    {\r\n        \"id\"\
            \ : 13011,\r\n        \"customerId\" : 12212,\r\n        \"type\" : \"\
            CHECKING\",\r\n        \"balance\" : 0.00\r\n    },\r\n    {\r\n     \
            \   \"id\" : 13122,\r\n        \"customerId\" : 12212,\r\n        \"type\"\
            \ : \"CHECKING\",\r\n        \"balance\" : 700.00\r\n    },\r\n    {\r\
            \n        \"id\" : 13233,\r\n        \"customerId\" : 12212,\r\n     \
            \   \"type\" : \"CHECKING\",\r\n        \"balance\" : 0.00\r\n    },\r\
            \n    {\r\n        \"id\" : 13344,\r\n        \"customerId\" : 12212,\r\
            \n        \"type\" : \"SAVINGS\",\r\n        \"balance\" : 1231.10\r\n\
            \    },\r\n    {\r\n        \"id\" : 13566,\r\n        \"customerId\"\
            \ : 12212,\r\n        \"type\" : \"CHECKING\",\r\n        \"balance\"\
            \ : 100.00\r\n    },\r\n    {\r\n        \"id\" : 13677,\r\n        \"\
            customerId\" : 12212,\r\n        \"type\" : \"CHECKING\",\r\n        \"\
            balance\" : 100.00\r\n    },\r\n    {\r\n        \"id\" : 13788,\r\n \
            \       \"customerId\" : 12212,\r\n        \"type\" : \"CHECKING\",\r\n\
            \        \"balance\" : 100.00\r\n    },\r\n    {\r\n        \"id\" : 13899,\r\
            \n        \"customerId\" : 12212,\r\n        \"type\" : \"CHECKING\",\r\
            \n        \"balance\" : 100.00\r\n    },\r\n    {\r\n        \"id\" :\
            \ 14010,\r\n        \"customerId\" : 12212,\r\n        \"type\" : \"CHECKING\"\
            ,\r\n        \"balance\" : 100.00\r\n    },\r\n    {\r\n        \"id\"\
            \ : 14121,\r\n        \"customerId\" : 12212,\r\n        \"type\" : \"\
            LOAN\",\r\n        \"balance\" : 1000.00\r\n    },\r\n    {\r\n      \
            \  \"id\" : 14232,\r\n        \"customerId\" : 12212,\r\n        \"type\"\
            \ : \"LOAN\",\r\n        \"balance\" : 1000.00\r\n    },\r\n    {\r\n\
            \        \"id\" : 14343,\r\n        \"customerId\" : 12212,\r\n      \
            \  \"type\" : \"LOAN\",\r\n        \"balance\" : 1000.00\r\n    },\r\n\
            \    {\r\n        \"id\" : 14454,\r\n        \"customerId\" : 12212,\r\
            \n        \"type\" : \"LOAN\",\r\n        \"balance\" : 1000.00\r\n  \
            \  },\r\n    {\r\n        \"id\" : 14565,\r\n        \"customerId\" :\
            \ 12212,\r\n        \"type\" : \"CHECKING\",\r\n        \"balance\" :\
            \ 100.00\r\n    },\r\n    {\r\n        \"id\" : 14676,\r\n        \"customerId\"\
            \ : 12212,\r\n        \"type\" : \"CHECKING\",\r\n        \"balance\"\
            \ : 100.00\r\n    },\r\n    {\r\n        \"id\" : 14787,\r\n        \"\
            customerId\" : 12212,\r\n        \"type\" : \"CHECKING\",\r\n        \"\
            balance\" : 100.00\r\n    },\r\n    {\r\n        \"id\" : 14898,\r\n \
            \       \"customerId\" : 12212,\r\n        \"type\" : \"CHECKING\",\r\n\
            \        \"balance\" : 100.00\r\n    },\r\n    {\r\n        \"id\" : 15009,\r\
            \n        \"customerId\" : 12212,\r\n        \"type\" : \"CHECKING\",\r\
            \n        \"balance\" : 100.00\r\n    },\r\n    {\r\n        \"id\" :\
            \ 15120,\r\n        \"customerId\" : 12212,\r\n        \"type\" : \"CHECKING\"\
            ,\r\n        \"balance\" : 100.00\r\n    },\r\n    {\r\n        \"id\"\
            \ : 15231,\r\n        \"customerId\" : 12212,\r\n        \"type\" : \"\
            LOAN\",\r\n        \"balance\" : 1000.00\r\n    },\r\n    {\r\n      \
            \  \"id\" : 54321,\r\n        \"customerId\" : 12212,\r\n        \"type\"\
            \ : \"CHECKING\",\r\n        \"balance\" : 1051.12\r\n    }\r\n]"
          type: application/json
  - $type: TestSuite
    testLogic: true
    testFlowLogic:
      condition: true
    testID: 605
    enabled: true
    name: Maintenance Topics
    profileMappingID: 0
    maxProfileMappingID: 1
    propertyOwner:
      properties:
      - $type: DbAccountProperty
        name: Database Account
        account:
          local:
            $type: DbConfigSettings
            password: AwAAAAA=
            uri: "jdbc:hsqldb:hsql://${IP}/parabank"
            username: sa
            driver: org.hsqldb.jdbcDriver
    keyStoreDatas:
    - dataSourceNames:
      - Test Data
      privateKeyPassword: true
      publicKeyPassword: true
      privateStorePassword: true
      privateStorePasswordObj:
        fixedValue:
          $type: PasswordTestValue
          password: AwAAABhmMVpNb1VPWWp4aEQ4Y2tXb3RnVDhBPT0=
      publicStorePassword: true
      certificateStorePassword: true
      certificateStorePasswordObj:
        fixedValue:
          $type: PasswordTestValue
          password: AwAAABhmMVpNb1VPWWp4aEQ4Y2tXb3RnVDhBPT0=
      privateKeyAlias: true
      publicKeyAlias: true
      certificateAlias: true
      privateStoreType: true
      privateStoreTypeObj:
        fixedValue:
          $type: StringTestValue
          value: PKCS12
      publicStoreType: true
      publicStoreTypeObj:
        fixedValue:
          $type: StringTestValue
          value: PKCS12
      certificateStoreType: true
      certificateStoreTypeObj:
        fixedValue:
          $type: StringTestValue
          value: PKCS12
      privateStorePath: true
      privateStorePathObj:
        $type: RelativeLocationMultiValue
        fixedValue:
          $type: RelativeLocationTestValue
          location: true
          locationObj:
            path: ..\..\..\..\..\..\Program Files\Parasoft\SOAtest & Virtualize\9.10\examples\keystores\soatest.pfx
        parameterizedValue:
          $type: ParameterizedTestBooleanValue
          boolValueLabel: Persist as relative path
      publicStorePath: true
      publicStorePathObj:
        $type: RelativeLocationMultiValue
        fixedValue:
          $type: RelativeLocationTestValue
        parameterizedValue:
          $type: ParameterizedTestBooleanValue
          boolValueLabel: Persist as relative path
      certificateStorePath: true
      certificateStorePathObj:
        $type: RelativeLocationMultiValue
        fixedValue:
          $type: RelativeLocationTestValue
          location: true
          locationObj:
            path: ..\..\..\..\..\..\Program Files\Parasoft\SOAtest & Virtualize\9.10\examples\keystores\soatest.pfx
        parameterizedValue:
          $type: ParameterizedTestBooleanValue
          boolValueLabel: Persist as relative path
      name: Key Store
    nextIdentifier: 617
    dataSources:
    - id: ds_-1863399635_1728599184774_1424198633
      impl:
        $type: TableDataSource
        model:
          columnIdentifiers:
          - username
          - password
          rows:
          - - john
            - demo
          - - parasoft
            - demo
      name: New Datasource
      useAllRows: true
    tests:
    - $type: TestSuite
      testLogic: true
      testID: 607
      enabled: true
      name: Modular Test Design
      profileMappingID: 0
      maxProfileMappingID: 1
      nextIdentifier: 795
      tests:
      - $type: TestSuiteReference
        fileReference: true
        fileReferenceObj:
          path: reference_tests\Login.tst
        testLogic: true
        testFlowLogic:
          condition: true
        isEnabled: true
      - $type: RESTClientToolTest
        testLogic: true
        testID: 609
        enabled: true
        name: "/customers/{customerId} - GET"
        performanceGroup: 10
        tool:
          $type: RESTClient
          dataSourceNames:
          - New Datasource
          iconName: RESTClient
          name: "/customers/{customerId} - GET"
          outputTools:
          - $type: DiffTool
            dataSourceNames:
            - New Datasource
            iconName: Diff
            name: "Diff control generated on Apr 15, 2022 11:41:45 AM."
            differs:
            - $type: BinaryDiffer
              source:
                optionsSource: 1
            - $type: TextDiffer
            - $type: XMLDifferNew
              formXml:
                formXML:
                  rootNodeExists: true
                  rootNode:
                    $type: XMLElementNode
                    xmlEncoding: 2
                    value: ""
                    name: NewElement
                    showAttributes: true
              hasSoapControlSource: true
              soapControlSource:
                $type: SoapDiffControlSource
            - $type: JSONDiffer
            source:
              controls:
              - keys:
                - ""
                - ""
                row:
                  refs:
                  - dataSourceName: ""
                  last: false
              - "{\"id\":12323,\"firstName\":\"Bob\",\"lastName\":\"Parasoft\",\"\
                address\":{\"street\":\"101 E Huntington Dr\",\"city\":\"Monrovia\"\
                ,\"state\":\"CA\",\"zipCode\":\"91016\"},\"phoneNumber\":\"626-256-3680\"\
                ,\"ssn\":\"123-45-6789\"}"
            mode: 3
          formJson:
            value:
              $type: ElementValue
              writeType: true
              hasReference: true
              qnameAsString: :root
              replacedColumn: ""
              values:
              - $type: ComplexValue
                replacedColumn: ""
                attributes:
                - replacedColumn: ""
                  value:
                    $type: StringValue
                    replacedColumn: ""
                    value: object
                    xmlEncoding: 2
                  useValue: true
                compositorValue: true
                compositorValueObj:
                  replacedColumn: ""
                  values:
                    $type: CompositorValueSetCollectionSet
                    set:
                    - $type: CompositorValueSet
            elementTypeName: root
          hasServiceInfo: true
          serviceInfo:
            serviceDescriptor:
              $type: StandardServiceDescriptor
              location: http://qa1.parasoft.com:8090/parabank/services/bank/swagger.yaml
            serviceName: ""
            versionName: ""
          jsonBuilder:
            hasValue: true
            value:
              $type: JSONObjectValue
              nameIsNull: true
          schemaURL:
            MessagingClient_SchemaLocation: "${SWAGGER}"
          formInput:
            value:
              $type: ElementValue
              writeType: true
              hasReference: true
              qnameAsString: ":"
              replacedColumn: ""
              values:
              - $type: ComplexValue
                replacedColumn: ""
                compositorValue: true
                compositorValueObj:
                  replacedColumn: ""
                  values:
                    $type: CompositorValueSetCollectionSet
                    set:
                    - $type: CompositorValueSet
          jmsMessageOutputProvider:
            $type: JMSMessageOutputProvider
            jmsOutputProviderRequest:
              $type: JMSOutputProvider
              name: Request Object
              menuName: Object
            jmsOutputProviderResponse:
              $type: JMSOutputProvider
              name: Response Message Object
              menuName: Message Object
          validResponseRange:
            validResponseRange:
              values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                validResponseRange: 200
          router:
            values:
            - $type: ScriptedValue
            fixedValue:
              $type: StringTestValue
              HTTPClient_Endpoint: "${BASEURL}/customers/{customerId}"
          transportProperties:
            manager:
              protocol: 1
              properties:
              - $type: HTTPClientHTTPProperties
                followRedirects:
                  bool: true
                common:
                  auth:
                    useDefault: false
                    customType: 1
                  method:
                    values:
                    - $type: ScriptedValue
                    fixedValue:
                      $type: HTTPMethodTestValue
                      method: GET
                  httpHeaders:
                    properties:
                    - name: Accept
                      value:
                        values:
                        - $type: ScriptedValue
                        fixedValue:
                          $type: StringTestValue
                          value: application/json
                protocol: 1
                keepAlive1_1:
                  bool: true
              - $type: HTTPClientHTTPProperties
                followRedirects:
                  bool: true
                common:
                  auth:
                    useDefault: false
                    customType: 1
                  method:
                    values:
                    - $type: ScriptedValue
                    fixedValue:
                      $type: HTTPMethodTestValue
                      method: GET
                  httpHeaders:
                    properties:
                    - name: Accept
                      value:
                        values:
                        - $type: ScriptedValue
                        fixedValue:
                          $type: StringTestValue
                          value: application/json
                keepAlive1_1:
                  bool: true
              - $type: NoneTransportProperties
            messageExchangePattern:
              inverted: true
          outputProviders:
            requestHeader:
              $type: HTTPNamedToolOutputProvider
              menuName: Transport Header
              name: Request Transport Header
            responseHeader:
              $type: HTTPNamedToolOutputProvider
              menuName: Transport Header
              name: Response Transport Header
            xmlRequestOutput:
              $type: NamedXMLToolOutputProvider
              menuName: Traffic
              name: Request Traffic
            trafficOutput:
              m_name: Traffic Stream
            objectOutput:
              $type: ObjectOutputProvider
              outputTools:
              - $type: TrafficViewer
                iconName: TrafficViewer
                name: Traffic Viewer
                showRequestHeaders: true
              name: Traffic Object
          literal:
            use: 1
            text:
              MessagingClient_LiteralMessage: ""
              type: application/json
            dataSource:
              columnName: "Accounts: accountBalance"
          mode: Literal
          literalQuery:
            isPropertiesRef: true
          literalPath:
            pathElements:
            - values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                value: customers
            - values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                value: "{customerId}"
          constrainedPath:
            pathParameters:
            - $type: ElementValue
              writeType: true
              hasReference: true
              qnameAsString: :customerId
              replacedColumn: ""
              values:
              - $type: IntegerValue
                replacedColumn: ""
                mode: 3
                columnName: extractedCustomerId
                value: 0
          resourceMethod:
            resourceId: "/customers/{customerId}"
            httpMethod: GET
          resourceMode: 3
          baseUrl:
            values:
            - $type: ScriptedValue
            - $type: WadlTestValue
              value: http://18.237.146.177:8090/parabank/services/bank
            fixedValue:
              $type: StringTestValue
              value: "${BASEURL}"
    - $type: TestSuite
      testLogic: true
      testID: 616
      enabled: true
      name: Search and Replace
      profileMappingID: 0
      maxProfileMappingID: 1
      nextIdentifier: 651
      tests:
      - $type: RESTClientToolTest
        testLogic: true
        testID: 617
        enabled: true
        name: /billpay - POST
        performanceGroup: 6
        tool:
          $type: RESTClient
          dataSourceNames:
          - New Datasource
          iconName: RESTClient
          name: /billpay - POST
          formJson:
            builtFromSchema: true
            value:
              $type: ElementValue
              writeType: true
              type:
                $type: ElementType
                hash: 1
                localName: root
                bodyType:
                  $type: ComplexType
                  hash: 2
                  attributes:
                  - hash: 3
                    ns: ""
                    name: type
                    defaultValue: object
                    fixed: object
                    contentType:
                      $type: StringType
                      hash: 4
                    required: true
                  name: /components/schemas/Payee
                  compositor: true
                  compositorObj:
                    $type: AllCompositor
                    hash: 5
                    types:
                    - $type: ElementType
                      hash: 6
                      minOccurs: 0
                      localName: name
                      bodyType:
                        $type: ComplexType
                        hash: 7
                        attributes:
                        - hash: 8
                          ns: ""
                          name: type
                          defaultValue: string
                          fixed: string
                          contentType:
                            $type: StringType
                            hash: 4
                          required: true
                        content: true
                        contentObj:
                          $type: StringType
                          hash: 4
                        namespace: urn:parasoft:json
                        name: string
                        compositor: true
                        compositorObj:
                          $type: SequenceCompositor
                          hash: 9
                    - $type: ElementType
                      hash: 10
                      minOccurs: 0
                      localName: address
                      bodyType:
                        $type: ComplexType
                        hash: 11
                        attributes:
                        - hash: 12
                          ns: ""
                          name: type
                          defaultValue: object
                          fixed: object
                          contentType:
                            $type: StringType
                            hash: 4
                          required: true
                        name: /components/schemas/Address
                        compositor: true
                        compositorObj:
                          $type: AllCompositor
                          hash: 13
                          types:
                          - $type: ElementType
                            hash: 14
                            minOccurs: 0
                            localName: street
                            bodyType:
                              $type: ComplexType
                              hash: 7
                          - $type: ElementType
                            hash: 15
                            minOccurs: 0
                            localName: city
                            bodyType:
                              $type: ComplexType
                              hash: 7
                          - $type: ElementType
                            hash: 16
                            minOccurs: 0
                            localName: state
                            bodyType:
                              $type: ComplexType
                              hash: 7
                          - $type: ElementType
                            hash: 17
                            minOccurs: 0
                            localName: zipCode
                            bodyType:
                              $type: ComplexType
                              hash: 7
                    - $type: ElementType
                      hash: 18
                      minOccurs: 0
                      localName: phoneNumber
                      bodyType:
                        $type: ComplexType
                        hash: 7
                    - $type: ElementType
                      hash: 19
                      minOccurs: 0
                      localName: accountNumber
                      bodyType:
                        $type: ComplexType
                        hash: 20
                        attributes:
                        - hash: 21
                          ns: ""
                          name: type
                          defaultValue: number
                          fixed: number
                          contentType:
                            $type: StringType
                            hash: 4
                          required: true
                        content: true
                        contentObj:
                          $type: IntegerType
                          hash: 22
                        namespace: urn:parasoft:json
                        name: number
                        compositor: true
                        compositorObj:
                          $type: SequenceCompositor
                          hash: 23
              replacedColumn: ""
              values:
              - $type: ComplexValue
                replacedColumn: ""
                attributes:
                - replacedColumn: ""
                  value:
                    $type: StringValue
                    replacedColumn: ""
                    value: object
                    xmlEncoding: 2
                  useValue: true
                compositorValue: true
                compositorValueObj:
                  replacedColumn: ""
                  values:
                    $type: CompositorValueSetCollectionSet
                    set:
                    - $type: CompositorValueSet
                      values:
                      - $type: ElementValue
                        replacedColumn: ""
                        values:
                        - $type: ComplexValue
                          replacedColumn: ""
                          allowArrayExclude: true
                          attributes:
                          - replacedColumn: ""
                            value:
                              $type: StringValue
                              replacedColumn: ""
                              value: string
                              xmlEncoding: 2
                            useValue: true
                          contentValue: true
                          contentValueObj:
                            $type: StringValue
                            replacedColumn: ""
                            value: Wilhelm Haaker
                            xmlEncoding: 2
                          compositorValue: true
                          compositorValueObj:
                            replacedColumn: ""
                            values:
                              $type: CompositorValueSetCollectionSet
                              set:
                              - $type: CompositorValueSet
                      - $type: ElementValue
                        replacedColumn: ""
                        values:
                        - $type: ComplexValue
                          replacedColumn: ""
                          allowArrayExclude: true
                          attributes:
                          - replacedColumn: ""
                            value:
                              $type: StringValue
                              replacedColumn: ""
                              value: object
                              xmlEncoding: 2
                            useValue: true
                          compositorValue: true
                          compositorValueObj:
                            replacedColumn: ""
                            values:
                              $type: CompositorValueSetCollectionSet
                              set:
                              - $type: CompositorValueSet
                                values:
                                - $type: ElementValue
                                  replacedColumn: ""
                                  values:
                                  - $type: ComplexValue
                                    replacedColumn: ""
                                    allowArrayExclude: true
                                    attributes:
                                    - replacedColumn: ""
                                      value:
                                        $type: StringValue
                                        replacedColumn: ""
                                        value: string
                                        xmlEncoding: 2
                                      useValue: true
                                    contentValue: true
                                    contentValueObj:
                                      $type: StringValue
                                      replacedColumn: ""
                                      value: 101 E. Huntington Drive
                                      xmlEncoding: 2
                                    compositorValue: true
                                    compositorValueObj:
                                      replacedColumn: ""
                                      values:
                                        $type: CompositorValueSetCollectionSet
                                        set:
                                        - $type: CompositorValueSet
                                - $type: ElementValue
                                  replacedColumn: ""
                                  values:
                                  - $type: ComplexValue
                                    replacedColumn: ""
                                    allowArrayExclude: true
                                    attributes:
                                    - replacedColumn: ""
                                      value:
                                        $type: StringValue
                                        replacedColumn: ""
                                        value: string
                                        xmlEncoding: 2
                                      useValue: true
                                    contentValue: true
                                    contentValueObj:
                                      $type: StringValue
                                      replacedColumn: ""
                                      value: Monrovia
                                      xmlEncoding: 2
                                    compositorValue: true
                                    compositorValueObj:
                                      replacedColumn: ""
                                      values:
                                        $type: CompositorValueSetCollectionSet
                                        set:
                                        - $type: CompositorValueSet
                                - $type: ElementValue
                                  replacedColumn: ""
                                  values:
                                  - $type: ComplexValue
                                    replacedColumn: ""
                                    allowArrayExclude: true
                                    attributes:
                                    - replacedColumn: ""
                                      value:
                                        $type: StringValue
                                        replacedColumn: ""
                                        value: string
                                        xmlEncoding: 2
                                      useValue: true
                                    contentValue: true
                                    contentValueObj:
                                      $type: StringValue
                                      replacedColumn: ""
                                      value: California
                                      xmlEncoding: 2
                                    compositorValue: true
                                    compositorValueObj:
                                      replacedColumn: ""
                                      values:
                                        $type: CompositorValueSetCollectionSet
                                        set:
                                        - $type: CompositorValueSet
                                - $type: ElementValue
                                  replacedColumn: ""
                                  values:
                                  - $type: ComplexValue
                                    replacedColumn: ""
                                    allowArrayExclude: true
                                    attributes:
                                    - replacedColumn: ""
                                      value:
                                        $type: StringValue
                                        replacedColumn: ""
                                        value: string
                                        xmlEncoding: 2
                                      useValue: true
                                    contentValue: true
                                    contentValueObj:
                                      $type: StringValue
                                      replacedColumn: ""
                                      value: 91016
                                      xmlEncoding: 2
                                    compositorValue: true
                                    compositorValueObj:
                                      replacedColumn: ""
                                      values:
                                        $type: CompositorValueSetCollectionSet
                                        set:
                                        - $type: CompositorValueSet
                      - $type: ElementValue
                        replacedColumn: ""
                        values:
                        - $type: ComplexValue
                          replacedColumn: ""
                          allowArrayExclude: true
                          attributes:
                          - replacedColumn: ""
                            value:
                              $type: StringValue
                              replacedColumn: ""
                              value: string
                              xmlEncoding: 2
                            useValue: true
                          contentValue: true
                          contentValueObj:
                            $type: StringValue
                            replacedColumn: ""
                            value: 123-456-7899
                            xmlEncoding: 2
                          compositorValue: true
                          compositorValueObj:
                            replacedColumn: ""
                            values:
                              $type: CompositorValueSetCollectionSet
                              set:
                              - $type: CompositorValueSet
                      - $type: ElementValue
                        replacedColumn: ""
                        values:
                        - $type: ComplexValue
                          replacedColumn: ""
                          allowArrayExclude: true
                          attributes:
                          - replacedColumn: ""
                            value:
                              $type: StringValue
                              replacedColumn: ""
                              value: number
                              xmlEncoding: 2
                            useValue: true
                          contentValue: true
                          contentValueObj:
                            $type: IntegerValue
                            replacedColumn: ""
                            value: 54321
                          compositorValue: true
                          compositorValueObj:
                            replacedColumn: ""
                            values:
                              $type: CompositorValueSetCollectionSet
                              set:
                              - $type: CompositorValueSet
            elementTypeName: root
          hasServiceInfo: true
          serviceInfo:
            serviceDescriptor:
              $type: StandardServiceDescriptor
              location: http://qa1.parasoft.com:8090/parabank/services/bank/swagger.yaml
            serviceName: ""
            versionName: ""
          jsonBuilder:
            hasValue: true
            value:
              $type: JSONObjectValue
              nameIsNull: true
          schemaURL:
            MessagingClient_SchemaLocation: "${SWAGGER}"
          formInput:
            value:
              $type: ElementValue
              writeType: true
              hasReference: true
              qnameAsString: ":"
              replacedColumn: ""
              values:
              - $type: ComplexValue
                replacedColumn: ""
                compositorValue: true
                compositorValueObj:
                  replacedColumn: ""
                  values:
                    $type: CompositorValueSetCollectionSet
                    set:
                    - $type: CompositorValueSet
          jmsMessageOutputProvider:
            $type: JMSMessageOutputProvider
            jmsOutputProviderRequest:
              $type: JMSOutputProvider
              name: Request Object
              menuName: Object
            jmsOutputProviderResponse:
              $type: JMSOutputProvider
              name: Response Message Object
              menuName: Message Object
          validResponseRange:
            validResponseRange:
              values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                validResponseRange: 200
          router:
            values:
            - $type: ScriptedValue
            fixedValue:
              $type: StringTestValue
              HTTPClient_Endpoint: "${BASEURL}/billpay?accountId=0&amount=0.0"
          urlParameters:
            properties:
            - name: accountId
              value:
                values:
                - $type: ScriptedValue
                fixedValue:
                  $type: StringTestValue
                  value: 0
            - name: amount
              value:
                values:
                - $type: ScriptedValue
                fixedValue:
                  $type: StringTestValue
                  value: 0.0
          transportProperties:
            manager:
              protocol: 1
              properties:
              - $type: HTTPClientHTTPProperties
                followRedirects:
                  bool: true
                common:
                  auth:
                    useDefault: false
                    customType: 1
                  method:
                    values:
                    - $type: ScriptedValue
                    fixedValue:
                      $type: HTTPMethodTestValue
                      method: POST
                  httpHeaders:
                    properties:
                    - name: Accept
                      value:
                        values:
                        - $type: ScriptedValue
                        fixedValue:
                          $type: StringTestValue
                          value: application/json
                protocol: 1
                keepAlive1_1:
                  bool: true
              - $type: HTTPClientHTTPProperties
                followRedirects:
                  bool: true
                common:
                  auth:
                    useDefault: false
                    customType: 1
                  method:
                    values:
                    - $type: ScriptedValue
                    fixedValue:
                      $type: HTTPMethodTestValue
                      method: POST
                  httpHeaders:
                    properties:
                    - name: Accept
                      value:
                        values:
                        - $type: ScriptedValue
                        fixedValue:
                          $type: StringTestValue
                          value: application/json
                keepAlive1_1:
                  bool: true
              - $type: NoneTransportProperties
            messageExchangePattern:
              inverted: true
          outputProviders:
            requestHeader:
              $type: HTTPNamedToolOutputProvider
              menuName: Transport Header
              name: Request Transport Header
            responseHeader:
              $type: HTTPNamedToolOutputProvider
              menuName: Transport Header
              name: Response Transport Header
            xmlRequestOutput:
              $type: NamedXMLToolOutputProvider
              menuName: Traffic
              name: Request Traffic
            trafficOutput:
              m_name: Traffic Stream
            objectOutput:
              $type: ObjectOutputProvider
              outputTools:
              - $type: TrafficViewer
                iconName: TrafficViewer
                name: Traffic Viewer
                showRequestHeaders: true
              name: Traffic Object
          literal:
            use: 1
            text:
              MessagingClient_LiteralMessage: "{\"name\":\"\",\"address\":{\"street\"\
                :\"\",\"city\":\"\",\"state\":\"\",\"zipCode\":\"\"},\"phoneNumber\"\
                :\"\",\"accountNumber\":0}"
              type: application/json
          mode: Form JSON
          literalQuery:
            isPropertiesRef: true
          constrainedQuery:
            parameters:
            - $type: ElementValue
              writeType: true
              hasReference: true
              qnameAsString: :accountId
              replacedColumn: ""
              values:
              - $type: IntegerValue
                replacedColumn: ""
                value: 12345
            - $type: ElementValue
              writeType: true
              hasReference: true
              qnameAsString: :amount
              replacedColumn: ""
              values:
              - $type: DecimalValue
                replacedColumn: ""
                value: 10.0
          literalPath:
            pathElements:
            - values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                value: billpay
          resourceMethod:
            resourceId: /billpay
            httpMethod: POST
          resourceMode: 3
          baseUrl:
            values:
            - $type: ScriptedValue
            - $type: WadlTestValue
              value: http://18.237.146.177:8090/parabank/services/bank
            fixedValue:
              $type: StringTestValue
              value: "${BASEURL}"
      - $type: RESTClientToolTest
        testLogic: true
        testID: 619
        enabled: true
        name: /billpay - POST 2
        performanceGroup: 6
        tool:
          $type: RESTClient
          dataSourceNames:
          - New Datasource
          iconName: RESTClient
          name: /billpay - POST 2
          formJson:
            builtFromSchema: true
            value:
              $type: ElementValue
              writeType: true
              hasReference: true
              qnameAsString: :root
              replacedColumn: ""
              values:
              - $type: ComplexValue
                replacedColumn: ""
                attributes:
                - replacedColumn: ""
                  value:
                    $type: StringValue
                    replacedColumn: ""
                    value: object
                    xmlEncoding: 2
                  useValue: true
                compositorValue: true
                compositorValueObj:
                  replacedColumn: ""
                  values:
                    $type: CompositorValueSetCollectionSet
                    set:
                    - $type: CompositorValueSet
                      values:
                      - $type: ElementValue
                        replacedColumn: ""
                        values:
                        - $type: ComplexValue
                          replacedColumn: ""
                          allowArrayExclude: true
                          attributes:
                          - replacedColumn: ""
                            value:
                              $type: StringValue
                              replacedColumn: ""
                              value: string
                              xmlEncoding: 2
                            useValue: true
                          contentValue: true
                          contentValueObj:
                            $type: StringValue
                            replacedColumn: ""
                            value: Wilhelm Haaker
                            xmlEncoding: 2
                          compositorValue: true
                          compositorValueObj:
                            replacedColumn: ""
                            values:
                              $type: CompositorValueSetCollectionSet
                              set:
                              - $type: CompositorValueSet
                      - $type: ElementValue
                        replacedColumn: ""
                        values:
                        - $type: ComplexValue
                          replacedColumn: ""
                          allowArrayExclude: true
                          attributes:
                          - replacedColumn: ""
                            value:
                              $type: StringValue
                              replacedColumn: ""
                              value: object
                              xmlEncoding: 2
                            useValue: true
                          compositorValue: true
                          compositorValueObj:
                            replacedColumn: ""
                            values:
                              $type: CompositorValueSetCollectionSet
                              set:
                              - $type: CompositorValueSet
                                values:
                                - $type: ElementValue
                                  replacedColumn: ""
                                  values:
                                  - $type: ComplexValue
                                    replacedColumn: ""
                                    allowArrayExclude: true
                                    attributes:
                                    - replacedColumn: ""
                                      value:
                                        $type: StringValue
                                        replacedColumn: ""
                                        value: string
                                        xmlEncoding: 2
                                      useValue: true
                                    contentValue: true
                                    contentValueObj:
                                      $type: StringValue
                                      replacedColumn: ""
                                      value: 101 E. Huntington Drive
                                      xmlEncoding: 2
                                    compositorValue: true
                                    compositorValueObj:
                                      replacedColumn: ""
                                      values:
                                        $type: CompositorValueSetCollectionSet
                                        set:
                                        - $type: CompositorValueSet
                                - $type: ElementValue
                                  replacedColumn: ""
                                  values:
                                  - $type: ComplexValue
                                    replacedColumn: ""
                                    allowArrayExclude: true
                                    attributes:
                                    - replacedColumn: ""
                                      value:
                                        $type: StringValue
                                        replacedColumn: ""
                                        value: string
                                        xmlEncoding: 2
                                      useValue: true
                                    contentValue: true
                                    contentValueObj:
                                      $type: StringValue
                                      replacedColumn: ""
                                      value: Monrovia
                                      xmlEncoding: 2
                                    compositorValue: true
                                    compositorValueObj:
                                      replacedColumn: ""
                                      values:
                                        $type: CompositorValueSetCollectionSet
                                        set:
                                        - $type: CompositorValueSet
                                - $type: ElementValue
                                  replacedColumn: ""
                                  values:
                                  - $type: ComplexValue
                                    replacedColumn: ""
                                    allowArrayExclude: true
                                    attributes:
                                    - replacedColumn: ""
                                      value:
                                        $type: StringValue
                                        replacedColumn: ""
                                        value: string
                                        xmlEncoding: 2
                                      useValue: true
                                    contentValue: true
                                    contentValueObj:
                                      $type: StringValue
                                      replacedColumn: ""
                                      value: California
                                      xmlEncoding: 2
                                    compositorValue: true
                                    compositorValueObj:
                                      replacedColumn: ""
                                      values:
                                        $type: CompositorValueSetCollectionSet
                                        set:
                                        - $type: CompositorValueSet
                                - $type: ElementValue
                                  replacedColumn: ""
                                  values:
                                  - $type: ComplexValue
                                    replacedColumn: ""
                                    allowArrayExclude: true
                                    attributes:
                                    - replacedColumn: ""
                                      value:
                                        $type: StringValue
                                        replacedColumn: ""
                                        value: string
                                        xmlEncoding: 2
                                      useValue: true
                                    contentValue: true
                                    contentValueObj:
                                      $type: StringValue
                                      replacedColumn: ""
                                      value: 91016
                                      xmlEncoding: 2
                                    compositorValue: true
                                    compositorValueObj:
                                      replacedColumn: ""
                                      values:
                                        $type: CompositorValueSetCollectionSet
                                        set:
                                        - $type: CompositorValueSet
                      - $type: ElementValue
                        replacedColumn: ""
                        values:
                        - $type: ComplexValue
                          replacedColumn: ""
                          allowArrayExclude: true
                          attributes:
                          - replacedColumn: ""
                            value:
                              $type: StringValue
                              replacedColumn: ""
                              value: string
                              xmlEncoding: 2
                            useValue: true
                          contentValue: true
                          contentValueObj:
                            $type: StringValue
                            replacedColumn: ""
                            value: 123-456-7899
                            xmlEncoding: 2
                          compositorValue: true
                          compositorValueObj:
                            replacedColumn: ""
                            values:
                              $type: CompositorValueSetCollectionSet
                              set:
                              - $type: CompositorValueSet
                      - $type: ElementValue
                        replacedColumn: ""
                        values:
                        - $type: ComplexValue
                          replacedColumn: ""
                          allowArrayExclude: true
                          attributes:
                          - replacedColumn: ""
                            value:
                              $type: StringValue
                              replacedColumn: ""
                              value: number
                              xmlEncoding: 2
                            useValue: true
                          contentValue: true
                          contentValueObj:
                            $type: IntegerValue
                            replacedColumn: ""
                            value: 54321
                          compositorValue: true
                          compositorValueObj:
                            replacedColumn: ""
                            values:
                              $type: CompositorValueSetCollectionSet
                              set:
                              - $type: CompositorValueSet
            elementTypeName: root
          hasServiceInfo: true
          serviceInfo:
            serviceDescriptor:
              $type: StandardServiceDescriptor
              location: http://qa1.parasoft.com:8090/parabank/services/bank/swagger.yaml
            serviceName: ""
            versionName: ""
          jsonBuilder:
            hasValue: true
            value:
              $type: JSONObjectValue
              nameIsNull: true
          schemaURL:
            MessagingClient_SchemaLocation: "${SWAGGER}"
          formInput:
            value:
              $type: ElementValue
              writeType: true
              hasReference: true
              qnameAsString: ":"
              replacedColumn: ""
              values:
              - $type: ComplexValue
                replacedColumn: ""
                compositorValue: true
                compositorValueObj:
                  replacedColumn: ""
                  values:
                    $type: CompositorValueSetCollectionSet
                    set:
                    - $type: CompositorValueSet
          jmsMessageOutputProvider:
            $type: JMSMessageOutputProvider
            jmsOutputProviderRequest:
              $type: JMSOutputProvider
              name: Request Object
              menuName: Object
            jmsOutputProviderResponse:
              $type: JMSOutputProvider
              name: Response Message Object
              menuName: Message Object
          validResponseRange:
            validResponseRange:
              values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                validResponseRange: 200
          router:
            values:
            - $type: ScriptedValue
            fixedValue:
              $type: StringTestValue
              HTTPClient_Endpoint: "${BASEURL}/billpay?accountId=0&amount=0.0"
          urlParameters:
            properties:
            - name: accountId
              value:
                values:
                - $type: ScriptedValue
                fixedValue:
                  $type: StringTestValue
                  value: 0
            - name: amount
              value:
                values:
                - $type: ScriptedValue
                fixedValue:
                  $type: StringTestValue
                  value: 0.0
          transportProperties:
            manager:
              protocol: 1
              properties:
              - $type: HTTPClientHTTPProperties
                followRedirects:
                  bool: true
                common:
                  auth:
                    useDefault: false
                    customType: 1
                  method:
                    values:
                    - $type: ScriptedValue
                    fixedValue:
                      $type: HTTPMethodTestValue
                      method: POST
                  httpHeaders:
                    properties:
                    - name: Accept
                      value:
                        values:
                        - $type: ScriptedValue
                        fixedValue:
                          $type: StringTestValue
                          value: application/json
                protocol: 1
                keepAlive1_1:
                  bool: true
              - $type: HTTPClientHTTPProperties
                followRedirects:
                  bool: true
                common:
                  auth:
                    useDefault: false
                    customType: 1
                  method:
                    values:
                    - $type: ScriptedValue
                    fixedValue:
                      $type: HTTPMethodTestValue
                      method: POST
                  httpHeaders:
                    properties:
                    - name: Accept
                      value:
                        values:
                        - $type: ScriptedValue
                        fixedValue:
                          $type: StringTestValue
                          value: application/json
                keepAlive1_1:
                  bool: true
              - $type: NoneTransportProperties
            messageExchangePattern:
              inverted: true
          outputProviders:
            requestHeader:
              $type: HTTPNamedToolOutputProvider
              menuName: Transport Header
              name: Request Transport Header
            responseHeader:
              $type: HTTPNamedToolOutputProvider
              menuName: Transport Header
              name: Response Transport Header
            xmlRequestOutput:
              $type: NamedXMLToolOutputProvider
              menuName: Traffic
              name: Request Traffic
            trafficOutput:
              m_name: Traffic Stream
            objectOutput:
              $type: ObjectOutputProvider
              outputTools:
              - $type: TrafficViewer
                iconName: TrafficViewer
                name: Traffic Viewer
                showRequestHeaders: true
              name: Traffic Object
          literal:
            use: 1
            text:
              MessagingClient_LiteralMessage: "{\"name\":\"\",\"address\":{\"street\"\
                :\"\",\"city\":\"\",\"state\":\"\",\"zipCode\":\"\"},\"phoneNumber\"\
                :\"\",\"accountNumber\":0}"
              type: application/json
          mode: Form JSON
          literalQuery:
            isPropertiesRef: true
          constrainedQuery:
            parameters:
            - $type: ElementValue
              writeType: true
              hasReference: true
              qnameAsString: :accountId
              replacedColumn: ""
              values:
              - $type: IntegerValue
                replacedColumn: ""
                value: 12345
            - $type: ElementValue
              writeType: true
              hasReference: true
              qnameAsString: :amount
              replacedColumn: ""
              values:
              - $type: DecimalValue
                replacedColumn: ""
                value: 10.0
          literalPath:
            pathElements:
            - values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                value: billpay
          resourceMethod:
            resourceId: /billpay
            httpMethod: POST
          resourceMode: 3
          baseUrl:
            values:
            - $type: ScriptedValue
            - $type: WadlTestValue
              value: http://18.237.146.177:8090/parabank/services/bank
            fixedValue:
              $type: StringTestValue
              value: "${BASEURL}"
      - $type: RESTClientToolTest
        testLogic: true
        testID: 620
        enabled: true
        name: /billpay - POST 3
        performanceGroup: 6
        tool:
          $type: RESTClient
          dataSourceNames:
          - New Datasource
          iconName: RESTClient
          name: /billpay - POST 3
          formJson:
            builtFromSchema: true
            value:
              $type: ElementValue
              writeType: true
              hasReference: true
              qnameAsString: :root
              replacedColumn: ""
              values:
              - $type: ComplexValue
                replacedColumn: ""
                attributes:
                - replacedColumn: ""
                  value:
                    $type: StringValue
                    replacedColumn: ""
                    value: object
                    xmlEncoding: 2
                  useValue: true
                compositorValue: true
                compositorValueObj:
                  replacedColumn: ""
                  values:
                    $type: CompositorValueSetCollectionSet
                    set:
                    - $type: CompositorValueSet
                      values:
                      - $type: ElementValue
                        replacedColumn: ""
                        values:
                        - $type: ComplexValue
                          replacedColumn: ""
                          allowArrayExclude: true
                          attributes:
                          - replacedColumn: ""
                            value:
                              $type: StringValue
                              replacedColumn: ""
                              value: string
                              xmlEncoding: 2
                            useValue: true
                          contentValue: true
                          contentValueObj:
                            $type: StringValue
                            replacedColumn: ""
                            value: John Smith
                            xmlEncoding: 2
                          compositorValue: true
                          compositorValueObj:
                            replacedColumn: ""
                            values:
                              $type: CompositorValueSetCollectionSet
                              set:
                              - $type: CompositorValueSet
                      - $type: ElementValue
                        replacedColumn: ""
                        values:
                        - $type: ComplexValue
                          replacedColumn: ""
                          allowArrayExclude: true
                          attributes:
                          - replacedColumn: ""
                            value:
                              $type: StringValue
                              replacedColumn: ""
                              value: object
                              xmlEncoding: 2
                            useValue: true
                          compositorValue: true
                          compositorValueObj:
                            replacedColumn: ""
                            values:
                              $type: CompositorValueSetCollectionSet
                              set:
                              - $type: CompositorValueSet
                                values:
                                - $type: ElementValue
                                  replacedColumn: ""
                                  values:
                                  - $type: ComplexValue
                                    replacedColumn: ""
                                    allowArrayExclude: true
                                    attributes:
                                    - replacedColumn: ""
                                      value:
                                        $type: StringValue
                                        replacedColumn: ""
                                        value: string
                                        xmlEncoding: 2
                                      useValue: true
                                    contentValue: true
                                    contentValueObj:
                                      $type: StringValue
                                      replacedColumn: ""
                                      value: 101 E. Huntington Drive
                                      xmlEncoding: 2
                                    compositorValue: true
                                    compositorValueObj:
                                      replacedColumn: ""
                                      values:
                                        $type: CompositorValueSetCollectionSet
                                        set:
                                        - $type: CompositorValueSet
                                - $type: ElementValue
                                  replacedColumn: ""
                                  values:
                                  - $type: ComplexValue
                                    replacedColumn: ""
                                    allowArrayExclude: true
                                    attributes:
                                    - replacedColumn: ""
                                      value:
                                        $type: StringValue
                                        replacedColumn: ""
                                        value: string
                                        xmlEncoding: 2
                                      useValue: true
                                    contentValue: true
                                    contentValueObj:
                                      $type: StringValue
                                      replacedColumn: ""
                                      value: Monrovia
                                      xmlEncoding: 2
                                    compositorValue: true
                                    compositorValueObj:
                                      replacedColumn: ""
                                      values:
                                        $type: CompositorValueSetCollectionSet
                                        set:
                                        - $type: CompositorValueSet
                                - $type: ElementValue
                                  replacedColumn: ""
                                  values:
                                  - $type: ComplexValue
                                    replacedColumn: ""
                                    allowArrayExclude: true
                                    attributes:
                                    - replacedColumn: ""
                                      value:
                                        $type: StringValue
                                        replacedColumn: ""
                                        value: string
                                        xmlEncoding: 2
                                      useValue: true
                                    contentValue: true
                                    contentValueObj:
                                      $type: StringValue
                                      replacedColumn: ""
                                      value: California
                                      xmlEncoding: 2
                                    compositorValue: true
                                    compositorValueObj:
                                      replacedColumn: ""
                                      values:
                                        $type: CompositorValueSetCollectionSet
                                        set:
                                        - $type: CompositorValueSet
                                - $type: ElementValue
                                  replacedColumn: ""
                                  values:
                                  - $type: ComplexValue
                                    replacedColumn: ""
                                    allowArrayExclude: true
                                    attributes:
                                    - replacedColumn: ""
                                      value:
                                        $type: StringValue
                                        replacedColumn: ""
                                        value: string
                                        xmlEncoding: 2
                                      useValue: true
                                    contentValue: true
                                    contentValueObj:
                                      $type: StringValue
                                      replacedColumn: ""
                                      value: 91016
                                      xmlEncoding: 2
                                    compositorValue: true
                                    compositorValueObj:
                                      replacedColumn: ""
                                      values:
                                        $type: CompositorValueSetCollectionSet
                                        set:
                                        - $type: CompositorValueSet
                      - $type: ElementValue
                        replacedColumn: ""
                        values:
                        - $type: ComplexValue
                          replacedColumn: ""
                          allowArrayExclude: true
                          attributes:
                          - replacedColumn: ""
                            value:
                              $type: StringValue
                              replacedColumn: ""
                              value: string
                              xmlEncoding: 2
                            useValue: true
                          contentValue: true
                          contentValueObj:
                            $type: StringValue
                            replacedColumn: ""
                            value: 123-456-7899
                            xmlEncoding: 2
                          compositorValue: true
                          compositorValueObj:
                            replacedColumn: ""
                            values:
                              $type: CompositorValueSetCollectionSet
                              set:
                              - $type: CompositorValueSet
                      - $type: ElementValue
                        replacedColumn: ""
                        values:
                        - $type: ComplexValue
                          replacedColumn: ""
                          allowArrayExclude: true
                          attributes:
                          - replacedColumn: ""
                            value:
                              $type: StringValue
                              replacedColumn: ""
                              value: number
                              xmlEncoding: 2
                            useValue: true
                          contentValue: true
                          contentValueObj:
                            $type: IntegerValue
                            replacedColumn: ""
                            value: 54321
                          compositorValue: true
                          compositorValueObj:
                            replacedColumn: ""
                            values:
                              $type: CompositorValueSetCollectionSet
                              set:
                              - $type: CompositorValueSet
            elementTypeName: root
          hasServiceInfo: true
          serviceInfo:
            serviceDescriptor:
              $type: StandardServiceDescriptor
              location: http://qa1.parasoft.com:8090/parabank/services/bank/swagger.yaml
            serviceName: ""
            versionName: ""
          jsonBuilder:
            hasValue: true
            value:
              $type: JSONObjectValue
              nameIsNull: true
          schemaURL:
            MessagingClient_SchemaLocation: "${SWAGGER}"
          formInput:
            value:
              $type: ElementValue
              writeType: true
              hasReference: true
              qnameAsString: ":"
              replacedColumn: ""
              values:
              - $type: ComplexValue
                replacedColumn: ""
                compositorValue: true
                compositorValueObj:
                  replacedColumn: ""
                  values:
                    $type: CompositorValueSetCollectionSet
                    set:
                    - $type: CompositorValueSet
          jmsMessageOutputProvider:
            $type: JMSMessageOutputProvider
            jmsOutputProviderRequest:
              $type: JMSOutputProvider
              name: Request Object
              menuName: Object
            jmsOutputProviderResponse:
              $type: JMSOutputProvider
              name: Response Message Object
              menuName: Message Object
          validResponseRange:
            validResponseRange:
              values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                validResponseRange: 200
          router:
            values:
            - $type: ScriptedValue
            fixedValue:
              $type: StringTestValue
              HTTPClient_Endpoint: "${BASEURL}/billpay?accountId=0&amount=0.0"
          urlParameters:
            properties:
            - name: accountId
              value:
                values:
                - $type: ScriptedValue
                fixedValue:
                  $type: StringTestValue
                  value: 0
            - name: amount
              value:
                values:
                - $type: ScriptedValue
                fixedValue:
                  $type: StringTestValue
                  value: 0.0
          transportProperties:
            manager:
              protocol: 1
              properties:
              - $type: HTTPClientHTTPProperties
                followRedirects:
                  bool: true
                common:
                  auth:
                    useDefault: false
                    customType: 1
                  method:
                    values:
                    - $type: ScriptedValue
                    fixedValue:
                      $type: HTTPMethodTestValue
                      method: POST
                  httpHeaders:
                    properties:
                    - name: Accept
                      value:
                        values:
                        - $type: ScriptedValue
                        fixedValue:
                          $type: StringTestValue
                          value: application/json
                protocol: 1
                keepAlive1_1:
                  bool: true
              - $type: HTTPClientHTTPProperties
                followRedirects:
                  bool: true
                common:
                  auth:
                    useDefault: false
                    customType: 1
                  method:
                    values:
                    - $type: ScriptedValue
                    fixedValue:
                      $type: HTTPMethodTestValue
                      method: POST
                  httpHeaders:
                    properties:
                    - name: Accept
                      value:
                        values:
                        - $type: ScriptedValue
                        fixedValue:
                          $type: StringTestValue
                          value: application/json
                keepAlive1_1:
                  bool: true
              - $type: NoneTransportProperties
            messageExchangePattern:
              inverted: true
          outputProviders:
            requestHeader:
              $type: HTTPNamedToolOutputProvider
              menuName: Transport Header
              name: Request Transport Header
            responseHeader:
              $type: HTTPNamedToolOutputProvider
              menuName: Transport Header
              name: Response Transport Header
            xmlRequestOutput:
              $type: NamedXMLToolOutputProvider
              menuName: Traffic
              name: Request Traffic
            trafficOutput:
              m_name: Traffic Stream
            objectOutput:
              $type: ObjectOutputProvider
              outputTools:
              - $type: TrafficViewer
                iconName: TrafficViewer
                name: Traffic Viewer
                showRequestHeaders: true
              name: Traffic Object
          literal:
            use: 1
            text:
              MessagingClient_LiteralMessage: "{\"name\":\"\",\"address\":{\"street\"\
                :\"\",\"city\":\"\",\"state\":\"\",\"zipCode\":\"\"},\"phoneNumber\"\
                :\"\",\"accountNumber\":0}"
              type: application/json
          mode: Form JSON
          literalQuery:
            isPropertiesRef: true
          constrainedQuery:
            parameters:
            - $type: ElementValue
              writeType: true
              hasReference: true
              qnameAsString: :accountId
              replacedColumn: ""
              values:
              - $type: IntegerValue
                replacedColumn: ""
                value: 12345
            - $type: ElementValue
              writeType: true
              hasReference: true
              qnameAsString: :amount
              replacedColumn: ""
              values:
              - $type: DecimalValue
                replacedColumn: ""
                value: 10.0
          literalPath:
            pathElements:
            - values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                value: billpay
          resourceMethod:
            resourceId: /billpay
            httpMethod: POST
          resourceMode: 3
          baseUrl:
            values:
            - $type: ScriptedValue
            - $type: WadlTestValue
              value: http://18.237.146.177:8090/parabank/services/bank
            fixedValue:
              $type: StringTestValue
              value: "${BASEURL}"
      - $type: RESTClientToolTest
        testLogic: true
        testID: 621
        enabled: true
        name: /billpay - POST 4
        performanceGroup: 6
        tool:
          $type: RESTClient
          dataSourceNames:
          - New Datasource
          iconName: RESTClient
          name: /billpay - POST 4
          formJson:
            builtFromSchema: true
            value:
              $type: ElementValue
              writeType: true
              hasReference: true
              qnameAsString: :root
              replacedColumn: ""
              values:
              - $type: ComplexValue
                replacedColumn: ""
                attributes:
                - replacedColumn: ""
                  value:
                    $type: StringValue
                    replacedColumn: ""
                    value: object
                    xmlEncoding: 2
                  useValue: true
                compositorValue: true
                compositorValueObj:
                  replacedColumn: ""
                  values:
                    $type: CompositorValueSetCollectionSet
                    set:
                    - $type: CompositorValueSet
                      values:
                      - $type: ElementValue
                        replacedColumn: ""
                        values:
                        - $type: ComplexValue
                          replacedColumn: ""
                          allowArrayExclude: true
                          attributes:
                          - replacedColumn: ""
                            value:
                              $type: StringValue
                              replacedColumn: ""
                              value: string
                              xmlEncoding: 2
                            useValue: true
                          contentValue: true
                          contentValueObj:
                            $type: StringValue
                            replacedColumn: ""
                            value: John Smith
                            xmlEncoding: 2
                          compositorValue: true
                          compositorValueObj:
                            replacedColumn: ""
                            values:
                              $type: CompositorValueSetCollectionSet
                              set:
                              - $type: CompositorValueSet
                      - $type: ElementValue
                        replacedColumn: ""
                        values:
                        - $type: ComplexValue
                          replacedColumn: ""
                          allowArrayExclude: true
                          attributes:
                          - replacedColumn: ""
                            value:
                              $type: StringValue
                              replacedColumn: ""
                              value: object
                              xmlEncoding: 2
                            useValue: true
                          compositorValue: true
                          compositorValueObj:
                            replacedColumn: ""
                            values:
                              $type: CompositorValueSetCollectionSet
                              set:
                              - $type: CompositorValueSet
                                values:
                                - $type: ElementValue
                                  replacedColumn: ""
                                  values:
                                  - $type: ComplexValue
                                    replacedColumn: ""
                                    allowArrayExclude: true
                                    attributes:
                                    - replacedColumn: ""
                                      value:
                                        $type: StringValue
                                        replacedColumn: ""
                                        value: string
                                        xmlEncoding: 2
                                      useValue: true
                                    contentValue: true
                                    contentValueObj:
                                      $type: StringValue
                                      replacedColumn: ""
                                      value: 101 E. Huntington Drive
                                      xmlEncoding: 2
                                    compositorValue: true
                                    compositorValueObj:
                                      replacedColumn: ""
                                      values:
                                        $type: CompositorValueSetCollectionSet
                                        set:
                                        - $type: CompositorValueSet
                                - $type: ElementValue
                                  replacedColumn: ""
                                  values:
                                  - $type: ComplexValue
                                    replacedColumn: ""
                                    allowArrayExclude: true
                                    attributes:
                                    - replacedColumn: ""
                                      value:
                                        $type: StringValue
                                        replacedColumn: ""
                                        value: string
                                        xmlEncoding: 2
                                      useValue: true
                                    contentValue: true
                                    contentValueObj:
                                      $type: StringValue
                                      replacedColumn: ""
                                      value: Monrovia
                                      xmlEncoding: 2
                                    compositorValue: true
                                    compositorValueObj:
                                      replacedColumn: ""
                                      values:
                                        $type: CompositorValueSetCollectionSet
                                        set:
                                        - $type: CompositorValueSet
                                - $type: ElementValue
                                  replacedColumn: ""
                                  values:
                                  - $type: ComplexValue
                                    replacedColumn: ""
                                    allowArrayExclude: true
                                    attributes:
                                    - replacedColumn: ""
                                      value:
                                        $type: StringValue
                                        replacedColumn: ""
                                        value: string
                                        xmlEncoding: 2
                                      useValue: true
                                    contentValue: true
                                    contentValueObj:
                                      $type: StringValue
                                      replacedColumn: ""
                                      value: California
                                      xmlEncoding: 2
                                    compositorValue: true
                                    compositorValueObj:
                                      replacedColumn: ""
                                      values:
                                        $type: CompositorValueSetCollectionSet
                                        set:
                                        - $type: CompositorValueSet
                                - $type: ElementValue
                                  replacedColumn: ""
                                  values:
                                  - $type: ComplexValue
                                    replacedColumn: ""
                                    allowArrayExclude: true
                                    attributes:
                                    - replacedColumn: ""
                                      value:
                                        $type: StringValue
                                        replacedColumn: ""
                                        value: string
                                        xmlEncoding: 2
                                      useValue: true
                                    contentValue: true
                                    contentValueObj:
                                      $type: StringValue
                                      replacedColumn: ""
                                      value: 91016
                                      xmlEncoding: 2
                                    compositorValue: true
                                    compositorValueObj:
                                      replacedColumn: ""
                                      values:
                                        $type: CompositorValueSetCollectionSet
                                        set:
                                        - $type: CompositorValueSet
                      - $type: ElementValue
                        replacedColumn: ""
                        values:
                        - $type: ComplexValue
                          replacedColumn: ""
                          allowArrayExclude: true
                          attributes:
                          - replacedColumn: ""
                            value:
                              $type: StringValue
                              replacedColumn: ""
                              value: string
                              xmlEncoding: 2
                            useValue: true
                          contentValue: true
                          contentValueObj:
                            $type: StringValue
                            replacedColumn: ""
                            value: 123-456-7899
                            xmlEncoding: 2
                          compositorValue: true
                          compositorValueObj:
                            replacedColumn: ""
                            values:
                              $type: CompositorValueSetCollectionSet
                              set:
                              - $type: CompositorValueSet
                      - $type: ElementValue
                        replacedColumn: ""
                        values:
                        - $type: ComplexValue
                          replacedColumn: ""
                          allowArrayExclude: true
                          attributes:
                          - replacedColumn: ""
                            value:
                              $type: StringValue
                              replacedColumn: ""
                              value: number
                              xmlEncoding: 2
                            useValue: true
                          contentValue: true
                          contentValueObj:
                            $type: IntegerValue
                            replacedColumn: ""
                            value: 54321
                          compositorValue: true
                          compositorValueObj:
                            replacedColumn: ""
                            values:
                              $type: CompositorValueSetCollectionSet
                              set:
                              - $type: CompositorValueSet
            elementTypeName: root
          hasServiceInfo: true
          serviceInfo:
            serviceDescriptor:
              $type: StandardServiceDescriptor
              location: http://qa1.parasoft.com:8090/parabank/services/bank/swagger.yaml
            serviceName: ""
            versionName: ""
          jsonBuilder:
            hasValue: true
            value:
              $type: JSONObjectValue
              nameIsNull: true
          schemaURL:
            MessagingClient_SchemaLocation: "${SWAGGER}"
          formInput:
            value:
              $type: ElementValue
              writeType: true
              hasReference: true
              qnameAsString: ":"
              replacedColumn: ""
              values:
              - $type: ComplexValue
                replacedColumn: ""
                compositorValue: true
                compositorValueObj:
                  replacedColumn: ""
                  values:
                    $type: CompositorValueSetCollectionSet
                    set:
                    - $type: CompositorValueSet
          jmsMessageOutputProvider:
            $type: JMSMessageOutputProvider
            jmsOutputProviderRequest:
              $type: JMSOutputProvider
              name: Request Object
              menuName: Object
            jmsOutputProviderResponse:
              $type: JMSOutputProvider
              name: Response Message Object
              menuName: Message Object
          validResponseRange:
            validResponseRange:
              values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                validResponseRange: 200
          router:
            values:
            - $type: ScriptedValue
            fixedValue:
              $type: StringTestValue
              HTTPClient_Endpoint: "${BASEURL}/billpay?accountId=0&amount=0.0"
          urlParameters:
            properties:
            - name: accountId
              value:
                values:
                - $type: ScriptedValue
                fixedValue:
                  $type: StringTestValue
                  value: 0
            - name: amount
              value:
                values:
                - $type: ScriptedValue
                fixedValue:
                  $type: StringTestValue
                  value: 0.0
          transportProperties:
            manager:
              protocol: 1
              properties:
              - $type: HTTPClientHTTPProperties
                followRedirects:
                  bool: true
                common:
                  auth:
                    useDefault: false
                    customType: 1
                  method:
                    values:
                    - $type: ScriptedValue
                    fixedValue:
                      $type: HTTPMethodTestValue
                      method: POST
                  httpHeaders:
                    properties:
                    - name: Accept
                      value:
                        values:
                        - $type: ScriptedValue
                        fixedValue:
                          $type: StringTestValue
                          value: application/json
                protocol: 1
                keepAlive1_1:
                  bool: true
              - $type: HTTPClientHTTPProperties
                followRedirects:
                  bool: true
                common:
                  auth:
                    useDefault: false
                    customType: 1
                  method:
                    values:
                    - $type: ScriptedValue
                    fixedValue:
                      $type: HTTPMethodTestValue
                      method: POST
                  httpHeaders:
                    properties:
                    - name: Accept
                      value:
                        values:
                        - $type: ScriptedValue
                        fixedValue:
                          $type: StringTestValue
                          value: application/json
                keepAlive1_1:
                  bool: true
              - $type: NoneTransportProperties
            messageExchangePattern:
              inverted: true
          outputProviders:
            requestHeader:
              $type: HTTPNamedToolOutputProvider
              menuName: Transport Header
              name: Request Transport Header
            responseHeader:
              $type: HTTPNamedToolOutputProvider
              menuName: Transport Header
              name: Response Transport Header
            xmlRequestOutput:
              $type: NamedXMLToolOutputProvider
              menuName: Traffic
              name: Request Traffic
            trafficOutput:
              m_name: Traffic Stream
            objectOutput:
              $type: ObjectOutputProvider
              outputTools:
              - $type: TrafficViewer
                iconName: TrafficViewer
                name: Traffic Viewer
                showRequestHeaders: true
              name: Traffic Object
          literal:
            use: 1
            text:
              MessagingClient_LiteralMessage: "{\"name\":\"\",\"address\":{\"street\"\
                :\"\",\"city\":\"\",\"state\":\"\",\"zipCode\":\"\"},\"phoneNumber\"\
                :\"\",\"accountNumber\":0}"
              type: application/json
          mode: Form JSON
          literalQuery:
            isPropertiesRef: true
          constrainedQuery:
            parameters:
            - $type: ElementValue
              writeType: true
              hasReference: true
              qnameAsString: :accountId
              replacedColumn: ""
              values:
              - $type: IntegerValue
                replacedColumn: ""
                value: 12345
            - $type: ElementValue
              writeType: true
              hasReference: true
              qnameAsString: :amount
              replacedColumn: ""
              values:
              - $type: DecimalValue
                replacedColumn: ""
                value: 10.0
          literalPath:
            pathElements:
            - values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                value: billpay
          resourceMethod:
            resourceId: /billpay
            httpMethod: POST
          resourceMode: 3
          baseUrl:
            values:
            - $type: ScriptedValue
            - $type: WadlTestValue
              value: http://18.237.146.177:8090/parabank/services/bank
            fixedValue:
              $type: StringTestValue
              value: "${BASEURL}"
      - $type: RESTClientToolTest
        testLogic: true
        testID: 622
        enabled: true
        name: /billpay - POST 5
        performanceGroup: 6
        tool:
          $type: RESTClient
          dataSourceNames:
          - New Datasource
          iconName: RESTClient
          name: /billpay - POST 5
          formJson:
            builtFromSchema: true
            value:
              $type: ElementValue
              writeType: true
              hasReference: true
              qnameAsString: :root
              replacedColumn: ""
              values:
              - $type: ComplexValue
                replacedColumn: ""
                attributes:
                - replacedColumn: ""
                  value:
                    $type: StringValue
                    replacedColumn: ""
                    value: object
                    xmlEncoding: 2
                  useValue: true
                compositorValue: true
                compositorValueObj:
                  replacedColumn: ""
                  values:
                    $type: CompositorValueSetCollectionSet
                    set:
                    - $type: CompositorValueSet
                      values:
                      - $type: ElementValue
                        replacedColumn: ""
                        values:
                        - $type: ComplexValue
                          replacedColumn: ""
                          allowArrayExclude: true
                          attributes:
                          - replacedColumn: ""
                            value:
                              $type: StringValue
                              replacedColumn: ""
                              value: string
                              xmlEncoding: 2
                            useValue: true
                          contentValue: true
                          contentValueObj:
                            $type: StringValue
                            replacedColumn: ""
                            value: John Smith
                            xmlEncoding: 2
                          compositorValue: true
                          compositorValueObj:
                            replacedColumn: ""
                            values:
                              $type: CompositorValueSetCollectionSet
                              set:
                              - $type: CompositorValueSet
                      - $type: ElementValue
                        replacedColumn: ""
                        values:
                        - $type: ComplexValue
                          replacedColumn: ""
                          allowArrayExclude: true
                          attributes:
                          - replacedColumn: ""
                            value:
                              $type: StringValue
                              replacedColumn: ""
                              value: object
                              xmlEncoding: 2
                            useValue: true
                          compositorValue: true
                          compositorValueObj:
                            replacedColumn: ""
                            values:
                              $type: CompositorValueSetCollectionSet
                              set:
                              - $type: CompositorValueSet
                                values:
                                - $type: ElementValue
                                  replacedColumn: ""
                                  values:
                                  - $type: ComplexValue
                                    replacedColumn: ""
                                    allowArrayExclude: true
                                    attributes:
                                    - replacedColumn: ""
                                      value:
                                        $type: StringValue
                                        replacedColumn: ""
                                        value: string
                                        xmlEncoding: 2
                                      useValue: true
                                    contentValue: true
                                    contentValueObj:
                                      $type: StringValue
                                      replacedColumn: ""
                                      value: 101 E. Huntington Drive
                                      xmlEncoding: 2
                                    compositorValue: true
                                    compositorValueObj:
                                      replacedColumn: ""
                                      values:
                                        $type: CompositorValueSetCollectionSet
                                        set:
                                        - $type: CompositorValueSet
                                - $type: ElementValue
                                  replacedColumn: ""
                                  values:
                                  - $type: ComplexValue
                                    replacedColumn: ""
                                    allowArrayExclude: true
                                    attributes:
                                    - replacedColumn: ""
                                      value:
                                        $type: StringValue
                                        replacedColumn: ""
                                        value: string
                                        xmlEncoding: 2
                                      useValue: true
                                    contentValue: true
                                    contentValueObj:
                                      $type: StringValue
                                      replacedColumn: ""
                                      value: Monrovia
                                      xmlEncoding: 2
                                    compositorValue: true
                                    compositorValueObj:
                                      replacedColumn: ""
                                      values:
                                        $type: CompositorValueSetCollectionSet
                                        set:
                                        - $type: CompositorValueSet
                                - $type: ElementValue
                                  replacedColumn: ""
                                  values:
                                  - $type: ComplexValue
                                    replacedColumn: ""
                                    allowArrayExclude: true
                                    attributes:
                                    - replacedColumn: ""
                                      value:
                                        $type: StringValue
                                        replacedColumn: ""
                                        value: string
                                        xmlEncoding: 2
                                      useValue: true
                                    contentValue: true
                                    contentValueObj:
                                      $type: StringValue
                                      replacedColumn: ""
                                      value: California
                                      xmlEncoding: 2
                                    compositorValue: true
                                    compositorValueObj:
                                      replacedColumn: ""
                                      values:
                                        $type: CompositorValueSetCollectionSet
                                        set:
                                        - $type: CompositorValueSet
                                - $type: ElementValue
                                  replacedColumn: ""
                                  values:
                                  - $type: ComplexValue
                                    replacedColumn: ""
                                    allowArrayExclude: true
                                    attributes:
                                    - replacedColumn: ""
                                      value:
                                        $type: StringValue
                                        replacedColumn: ""
                                        value: string
                                        xmlEncoding: 2
                                      useValue: true
                                    contentValue: true
                                    contentValueObj:
                                      $type: StringValue
                                      replacedColumn: ""
                                      value: 91016
                                      xmlEncoding: 2
                                    compositorValue: true
                                    compositorValueObj:
                                      replacedColumn: ""
                                      values:
                                        $type: CompositorValueSetCollectionSet
                                        set:
                                        - $type: CompositorValueSet
                      - $type: ElementValue
                        replacedColumn: ""
                        values:
                        - $type: ComplexValue
                          replacedColumn: ""
                          allowArrayExclude: true
                          attributes:
                          - replacedColumn: ""
                            value:
                              $type: StringValue
                              replacedColumn: ""
                              value: string
                              xmlEncoding: 2
                            useValue: true
                          contentValue: true
                          contentValueObj:
                            $type: StringValue
                            replacedColumn: ""
                            value: 123-456-7899
                            xmlEncoding: 2
                          compositorValue: true
                          compositorValueObj:
                            replacedColumn: ""
                            values:
                              $type: CompositorValueSetCollectionSet
                              set:
                              - $type: CompositorValueSet
                      - $type: ElementValue
                        replacedColumn: ""
                        values:
                        - $type: ComplexValue
                          replacedColumn: ""
                          allowArrayExclude: true
                          attributes:
                          - replacedColumn: ""
                            value:
                              $type: StringValue
                              replacedColumn: ""
                              value: number
                              xmlEncoding: 2
                            useValue: true
                          contentValue: true
                          contentValueObj:
                            $type: IntegerValue
                            replacedColumn: ""
                            value: 54321
                          compositorValue: true
                          compositorValueObj:
                            replacedColumn: ""
                            values:
                              $type: CompositorValueSetCollectionSet
                              set:
                              - $type: CompositorValueSet
            elementTypeName: root
          hasServiceInfo: true
          serviceInfo:
            serviceDescriptor:
              $type: StandardServiceDescriptor
              location: http://qa1.parasoft.com:8090/parabank/services/bank/swagger.yaml
            serviceName: ""
            versionName: ""
          jsonBuilder:
            hasValue: true
            value:
              $type: JSONObjectValue
              nameIsNull: true
          schemaURL:
            MessagingClient_SchemaLocation: "${SWAGGER}"
          formInput:
            value:
              $type: ElementValue
              writeType: true
              hasReference: true
              qnameAsString: ":"
              replacedColumn: ""
              values:
              - $type: ComplexValue
                replacedColumn: ""
                compositorValue: true
                compositorValueObj:
                  replacedColumn: ""
                  values:
                    $type: CompositorValueSetCollectionSet
                    set:
                    - $type: CompositorValueSet
          jmsMessageOutputProvider:
            $type: JMSMessageOutputProvider
            jmsOutputProviderRequest:
              $type: JMSOutputProvider
              name: Request Object
              menuName: Object
            jmsOutputProviderResponse:
              $type: JMSOutputProvider
              name: Response Message Object
              menuName: Message Object
          validResponseRange:
            validResponseRange:
              values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                validResponseRange: 200
          router:
            values:
            - $type: ScriptedValue
            fixedValue:
              $type: StringTestValue
              HTTPClient_Endpoint: "${BASEURL}/billpay?accountId=0&amount=0.0"
          urlParameters:
            properties:
            - name: accountId
              value:
                values:
                - $type: ScriptedValue
                fixedValue:
                  $type: StringTestValue
                  value: 0
            - name: amount
              value:
                values:
                - $type: ScriptedValue
                fixedValue:
                  $type: StringTestValue
                  value: 0.0
          transportProperties:
            manager:
              protocol: 1
              properties:
              - $type: HTTPClientHTTPProperties
                followRedirects:
                  bool: true
                common:
                  auth:
                    useDefault: false
                    customType: 1
                  method:
                    values:
                    - $type: ScriptedValue
                    fixedValue:
                      $type: HTTPMethodTestValue
                      method: POST
                  httpHeaders:
                    properties:
                    - name: Accept
                      value:
                        values:
                        - $type: ScriptedValue
                        fixedValue:
                          $type: StringTestValue
                          value: application/json
                protocol: 1
                keepAlive1_1:
                  bool: true
              - $type: HTTPClientHTTPProperties
                followRedirects:
                  bool: true
                common:
                  auth:
                    useDefault: false
                    customType: 1
                  method:
                    values:
                    - $type: ScriptedValue
                    fixedValue:
                      $type: HTTPMethodTestValue
                      method: POST
                  httpHeaders:
                    properties:
                    - name: Accept
                      value:
                        values:
                        - $type: ScriptedValue
                        fixedValue:
                          $type: StringTestValue
                          value: application/json
                keepAlive1_1:
                  bool: true
              - $type: NoneTransportProperties
            messageExchangePattern:
              inverted: true
          outputProviders:
            requestHeader:
              $type: HTTPNamedToolOutputProvider
              menuName: Transport Header
              name: Request Transport Header
            responseHeader:
              $type: HTTPNamedToolOutputProvider
              menuName: Transport Header
              name: Response Transport Header
            xmlRequestOutput:
              $type: NamedXMLToolOutputProvider
              menuName: Traffic
              name: Request Traffic
            trafficOutput:
              m_name: Traffic Stream
            objectOutput:
              $type: ObjectOutputProvider
              outputTools:
              - $type: TrafficViewer
                iconName: TrafficViewer
                name: Traffic Viewer
                showRequestHeaders: true
              name: Traffic Object
          literal:
            use: 1
            text:
              MessagingClient_LiteralMessage: "{\"name\":\"\",\"address\":{\"street\"\
                :\"\",\"city\":\"\",\"state\":\"\",\"zipCode\":\"\"},\"phoneNumber\"\
                :\"\",\"accountNumber\":0}"
              type: application/json
          mode: Form JSON
          literalQuery:
            isPropertiesRef: true
          constrainedQuery:
            parameters:
            - $type: ElementValue
              writeType: true
              hasReference: true
              qnameAsString: :accountId
              replacedColumn: ""
              values:
              - $type: IntegerValue
                replacedColumn: ""
                value: 12345
            - $type: ElementValue
              writeType: true
              hasReference: true
              qnameAsString: :amount
              replacedColumn: ""
              values:
              - $type: DecimalValue
                replacedColumn: ""
                value: 10.0
          literalPath:
            pathElements:
            - values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                value: billpay
          resourceMethod:
            resourceId: /billpay
            httpMethod: POST
          resourceMode: 3
          baseUrl:
            values:
            - $type: ScriptedValue
            - $type: WadlTestValue
              value: http://18.237.146.177:8090/parabank/services/bank
            fixedValue:
              $type: StringTestValue
              value: "${BASEURL}"
