<dir>
<h1>Helm Charts for Chatroom Application and MongoDB</h1>
</dir>
<dir>
    <p>This README provides instructions on using Helm charts for deploying the Chatroom application and MongoDB as part of your project. These Helm charts have been created as a foundation for your project, making it easier to manage deployments and configurations.</p>
</dir>
<dir>
    <h2>Prerequisites</h2>
</dir>
<dir>
    <p>Before you begin, ensure you have the following prerequisites:</p>
</dir>
<dir>
    <ol>
        <li><a href="https://helm.sh/docs/intro/install/">Helm</a> installed on your local machine.</li>
        <li>A Kubernetes cluster configured and accessible from your local machine.</li>
    </ol>
</dir>
<dir>
    <h2>Installation</h2>
</dir>
<dir>
    <h3>1. Clone the Repository</h3>
</dir>
<dir>
    <p>Clone the GitHub repository containing the Helm charts:</p>
</dir>
<dir>
    <pre><code>git clone https://github.com/NVB20/web-chat-apllication.git
cd web-chat-apllication
</code></pre>
</dir>
<dir>
    <h3>2. Deploy MongoDB</h3>
</dir>
<dir>
    <p>Use Helm to deploy MongoDB:</p>
</dir>
<dir>
    <pre><code>helm install mongo ./mongo
</code></pre>
</dir>
<dir>
    <p>This command will install MongoDB using the provided Helm chart. You can customize MongoDB configurations by editing the <code>mongo/values.yaml</code> file.</p>
</dir>
<dir>
    <h3>3. Deploy the Chatroom Application</h3>
</dir>
<dir>
    <p>Use Helm to deploy the Chatroom application:</p>
</dir>
<dir>
    <pre><code>helm install chatroom ./chatroom
</code></pre>
</dir>
<dir>
    <p>This command will install the Chatroom application using the provided Helm chart. You can customize the application's configurations by editing the <code>chatroom/values.yaml</code> file.</p>
</dir>
<dir>
    <h2>Upgrading Charts</h2>
</dir>
<dir>
    <p>If you need to update your deployments, you can easily upgrade your Helm charts.</p>
</dir>
<dir>
    <h3>Update MongoDB</h3>
</dir>
<dir>
    <p>To update the MongoDB deployment, you can make changes to the <code>mongo/values.yaml</code> file and then run:</p>
</dir>
<dir>
    <pre><code>helm upgrade mongo ./mongo
</code></pre>
</dir>
<dir>
    <h3>Update the Chatroom Application</h3>
</dir>
<dir>
    <p>To update the Chatroom application deployment, make changes to the <code>chatroom/values.yaml</code> file and then run:</p>
</dir>
<dir>
    <pre><code>helm upgrade chatroom ./chatroom
</code></pre>
</dir>
<dir>
    <h2>Uninstallation</h2>
</dir>
<dir>
    <p>To uninstall MongoDB and the Chatroom application, use the following commands:</p>
</dir>
<dir>
    <h3>Uninstall the Chatroom Application</h3>
</dir>
<dir>
    <pre><code>helm uninstall chatroom
</code></pre>
</dir>
<dir>
    <h3>Uninstall MongoDB</h3>
</dir>
<dir>
    <pre><code>helm uninstall mongo
</code></pre>
</dir>
<dir>
    <h2>Conclusion</h2>
</dir>
<dir>
    <p>With these Helm charts, you can easily manage and deploy both the Chatroom application and MongoDB in your project. Customizing configurations and upgrading deployments is straightforward, allowing you to focus on building and improving your chat application.</p>
</dir>



