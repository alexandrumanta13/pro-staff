import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Blog } from '../models/blog.model'

@Injectable({
  providedIn: 'root'
})
export class BlogService {

  private BLOGS = 'https://pro-staff.ro/prostaff-api/v1/blogs';
  private BLOG = 'https://pro-staff.ro/prostaff-api/v1/blog/';

  private BLOGS_CATEGORIES = 'https://pro-staff.ro/prostaff-api/v1/blogs/categories';
  private BLOGS_BY_CATEGORY = 'https://pro-staff.ro/prostaff-api/v1/blog/category/';


    /**
     * Constructor
     *
     * @param {HttpClient} _httpClient
     */

    constructor(private _httpClient: HttpClient) { }

    /**
     * Get blogs
     *
     * @returns {Promise<any>}
     */

    public getBlogs(): Promise<any> {

        return new Promise((resolve, reject) => {
            this._httpClient.get<Blog[]>(this.BLOGS)
                .subscribe((response: any) => {
                    resolve(response);
                }, reject);
        });
    }

    /**
     * Get blog
     *
     * @returns {Promise<any>}
     */

    public getBlog(postSlug): Promise<any> {

        return new Promise((resolve, reject) => {
            this._httpClient.get<Blog[]>(this.BLOG + postSlug)
                .subscribe((response: any) => {
                    resolve(response);
                }, reject);
        });
    }

    /**
     * Get categories
     *
     * @returns {Promise<any>}
     */

    public getBlogsCategories(): Promise<any> {

        return new Promise((resolve, reject) => {
            this._httpClient.get<Blog[]>(this.BLOGS_CATEGORIES)
                .subscribe((response: any) => {
                    resolve(response);
                }, reject);
        });
    }

    /**
     * Get by category
     *
     * @returns {Promise<any>}
     */

    public getBlogsByCategory(categorySlug): Promise<any> {

        return new Promise((resolve, reject) => {
            this._httpClient.get<Blog[]>(this.BLOGS_BY_CATEGORY + categorySlug)
                .subscribe((response: any) => {
                    resolve(response);
                }, reject);
        });
    }

    
}
